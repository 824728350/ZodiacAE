
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
resourceDependencyView := {
    "azurerm_application_gateway": [
        [
            "azurerm_application_gateway",
            "azurerm_public_ip",
            "frontend_ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_application_gateway",
            "azurerm_subnet",
            "gateway_ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_application_gateway",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_application_gateway",
            "azurerm_subnet",
            "frontend_ip_configuration.1.subnet_id",
            "id"
        ],
        [
            "azurerm_application_gateway",
            "azurerm_subnet",
            "private_link_configuration.0.ip_configuration.0.subnet_id",
            "id"
        ]
    ],
    "azurerm_bastion_host": [
        [
            "azurerm_bastion_host",
            "azurerm_public_ip",
            "ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_bastion_host",
            "azurerm_subnet",
            "ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_bastion_host",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_express_route_circuit": [
        [
            "azurerm_express_route_circuit",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_firewall": [
        [
            "azurerm_firewall",
            "azurerm_public_ip",
            "ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_firewall",
            "azurerm_subnet",
            "ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_firewall",
            "azurerm_public_ip",
            "management_ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_firewall",
            "azurerm_subnet",
            "management_ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_firewall",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_firewall",
            "azurerm_virtual_hub",
            "virtual_hub.0.virtual_hub_id",
            "id"
        ]
    ],
    "azurerm_firewall_network_rule_collection": [
        [
            "azurerm_firewall_network_rule_collection",
            "azurerm_firewall",
            "azure_firewall_name",
            "name"
        ],
        [
            "azurerm_firewall_network_rule_collection",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_image": [
        [
            "azurerm_image",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_image",
            "azurerm_virtual_machine",
            "source_virtual_machine_id",
            "id"
        ]
    ],
    "azurerm_lb": [
        [
            "azurerm_lb",
            "azurerm_public_ip",
            "frontend_ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_lb",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_lb",
            "azurerm_public_ip",
            "frontend_ip_configuration.1.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_lb",
            "azurerm_subnet",
            "frontend_ip_configuration.0.subnet_id",
            "id"
        ]
    ],
    "azurerm_lb_backend_address_pool": [
        [
            "azurerm_lb_backend_address_pool",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ]
    ],
    "azurerm_lb_backend_address_pool_address": [
        [
            "azurerm_lb_backend_address_pool_address",
            "azurerm_lb_backend_address_pool",
            "backend_address_pool_id",
            "id"
        ],
        [
            "azurerm_lb_backend_address_pool_address",
            "azurerm_virtual_network",
            "virtual_network_id",
            "id"
        ]
    ],
    "azurerm_lb_nat_pool": [
        [
            "azurerm_lb_nat_pool",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ],
        [
            "azurerm_lb_nat_pool",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_lb_nat_rule": [
        [
            "azurerm_lb_nat_rule",
            "azurerm_public_ip",
            "frontend_ip_configuration_name",
            "name"
        ],
        [
            "azurerm_lb_nat_rule",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ],
        [
            "azurerm_lb_nat_rule",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_lb_nat_rule",
            "azurerm_lb_backend_address_pool",
            "backend_address_pool_id",
            "id"
        ]
    ],
    "azurerm_lb_outbound_rule": [
        [
            "azurerm_lb_outbound_rule",
            "azurerm_lb_backend_address_pool",
            "backend_address_pool_id",
            "id"
        ],
        [
            "azurerm_lb_outbound_rule",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ]
    ],
    "azurerm_lb_probe": [
        [
            "azurerm_lb_probe",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ]
    ],
    "azurerm_lb_rule": [
        [
            "azurerm_lb_rule",
            "azurerm_lb_backend_address_pool",
            "backend_address_pool_ids",
            "id"
        ],
        [
            "azurerm_lb_rule",
            "azurerm_lb",
            "loadbalancer_id",
            "id"
        ],
        [
            "azurerm_lb_rule",
            "azurerm_lb_probe",
            "probe_id",
            "id"
        ]
    ],
    "azurerm_linux_virtual_machine": [
        [
            "azurerm_linux_virtual_machine",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_linux_virtual_machine",
            "azurerm_network_interface",
            "network_interface_ids",
            "id"
        ],
        [
            "azurerm_linux_virtual_machine",
            "azurerm_image",
            "source_image_id",
            "id"
        ]
    ],
    "azurerm_local_network_gateway": [
        [
            "azurerm_local_network_gateway",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_managed_disk": [
        [
            "azurerm_managed_disk",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_managed_disk",
            "azurerm_managed_disk",
            "source_resource_id",
            "id"
        ]
    ],
    "azurerm_mysql_database": [
        [
            "azurerm_mysql_database",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_mysql_database",
            "azurerm_mysql_server",
            "server_name",
            "name"
        ]
    ],
    "azurerm_mysql_firewall_rule": [
        [
            "azurerm_mysql_firewall_rule",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_mysql_firewall_rule",
            "azurerm_mysql_server",
            "server_name",
            "name"
        ]
    ],
    "azurerm_mysql_server": [
        [
            "azurerm_mysql_server",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_mysql_virtual_network_rule": [
        [
            "azurerm_mysql_virtual_network_rule",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_mysql_virtual_network_rule",
            "azurerm_mysql_server",
            "server_name",
            "name"
        ],
        [
            "azurerm_mysql_virtual_network_rule",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_nat_gateway": [
        [
            "azurerm_nat_gateway",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_nat_gateway_public_ip_association": [
        [
            "azurerm_nat_gateway_public_ip_association",
            "azurerm_nat_gateway",
            "nat_gateway_id",
            "id"
        ],
        [
            "azurerm_nat_gateway_public_ip_association",
            "azurerm_public_ip",
            "public_ip_address_id",
            "id"
        ]
    ],
    "azurerm_network_interface": [
        [
            "azurerm_network_interface",
            "azurerm_subnet",
            "ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_network_interface",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_network_interface",
            "azurerm_public_ip",
            "ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_network_interface",
            "azurerm_subnet",
            "ip_configuration.1.subnet_id",
            "id"
        ],
        [
            "azurerm_network_interface",
            "azurerm_public_ip",
            "ip_configuration.1.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_network_interface",
            "azurerm_subnet",
            "ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_network_interface",
            "azurerm_public_ip",
            "ip_configuration.0.subnet_id",
            "id"
        ]
    ],
    "azurerm_network_interface_nat_rule_association": [
        [
            "azurerm_network_interface_nat_rule_association",
            "azurerm_lb_nat_rule",
            "nat_rule_id",
            "id"
        ],
        [
            "azurerm_network_interface_nat_rule_association",
            "azurerm_network_interface",
            "network_interface_id",
            "id"
        ]
    ],
    "azurerm_network_interface_security_group_association": [
        [
            "azurerm_network_interface_security_group_association",
            "azurerm_network_interface",
            "network_interface_id",
            "id"
        ],
        [
            "azurerm_network_interface_security_group_association",
            "azurerm_network_security_group",
            "network_security_group_id",
            "id"
        ]
    ],
    "azurerm_network_security_group": [
        [
            "azurerm_network_security_group",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_network_security_rule": [
        [
            "azurerm_network_security_rule",
            "azurerm_network_security_group",
            "network_security_group_name",
            "name"
        ],
        [
            "azurerm_network_security_rule",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_private_dns_resolver": [
        [
            "azurerm_private_dns_resolver",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_private_dns_resolver",
            "azurerm_virtual_network",
            "virtual_network_id",
            "id"
        ]
    ],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [
        [
            "azurerm_private_dns_resolver_dns_forwarding_ruleset",
            "azurerm_private_dns_resolver_outbound_endpoint",
            "private_dns_resolver_outbound_endpoint_ids",
            "id"
        ],
        [
            "azurerm_private_dns_resolver_dns_forwarding_ruleset",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_private_dns_resolver_inbound_endpoint": [
        [
            "azurerm_private_dns_resolver_inbound_endpoint",
            "azurerm_subnet",
            "ip_configurations.0.subnet_id",
            "id"
        ],
        [
            "azurerm_private_dns_resolver_inbound_endpoint",
            "azurerm_private_dns_resolver",
            "private_dns_resolver_id",
            "id"
        ]
    ],
    "azurerm_private_dns_resolver_outbound_endpoint": [
        [
            "azurerm_private_dns_resolver_outbound_endpoint",
            "azurerm_private_dns_resolver",
            "private_dns_resolver_id",
            "id"
        ],
        [
            "azurerm_private_dns_resolver_outbound_endpoint",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_private_dns_resolver_virtual_network_link": [
        [
            "azurerm_private_dns_resolver_virtual_network_link",
            "azurerm_private_dns_resolver_dns_forwarding_ruleset",
            "dns_forwarding_ruleset_id",
            "id"
        ],
        [
            "azurerm_private_dns_resolver_virtual_network_link",
            "azurerm_virtual_network",
            "virtual_network_id",
            "id"
        ]
    ],
    "azurerm_private_endpoint": [
        [
            "azurerm_private_endpoint",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_private_endpoint",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ],
        [
            "azurerm_private_endpoint",
            "azurerm_storage_account",
            "private_service_connection.0.private_connection_resource_id",
            "id"
        ],
        [
            "azurerm_private_endpoint",
            "azurerm_private_link_service",
            "private_service_connection.0.private_connection_resource_id",
            "id"
        ],
        [
            "azurerm_private_endpoint",
            "azurerm_application_gateway",
            "private_service_connection.0.private_connection_resource_id",
            "id"
        ]
    ],
    "azurerm_private_link_service": [
        [
            "azurerm_private_link_service",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_private_link_service",
            "azurerm_subnet",
            "nat_ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_private_link_service",
            "azurerm_subnet",
            "nat_ip_configuration.1.subnet_id",
            "id"
        ]
    ],
    "azurerm_public_ip": [
        [
            "azurerm_public_ip",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_public_ip",
            "azurerm_resource_group",
            "domain_name_label",
            "name"
        ]
    ],
    "azurerm_resource_group": [],
    "azurerm_route": [
        [
            "azurerm_route",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_route",
            "azurerm_route_table",
            "route_table_name",
            "name"
        ]
    ],
    "azurerm_route_server": [
        [
            "azurerm_route_server",
            "azurerm_public_ip",
            "public_ip_address_id",
            "id"
        ],
        [
            "azurerm_route_server",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_route_server",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_route_table": [
        [
            "azurerm_route_table",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_storage_account": [
        [
            "azurerm_storage_account",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_storage_account",
            "azurerm_subnet",
            "network_rules.0.virtual_network_subnet_ids",
            "id"
        ]
    ],
    "azurerm_storage_account_network_rules": [
        [
            "azurerm_storage_account_network_rules",
            "azurerm_storage_account",
            "storage_account_id",
            "id"
        ],
        [
            "azurerm_storage_account_network_rules",
            "azurerm_subnet",
            "virtual_network_subnet_ids",
            "id"
        ]
    ],
    "azurerm_storage_account_network_rulesazurerm_virtual_machine": [],
    "azurerm_storage_blob": [
        [
            "azurerm_storage_blob",
            "azurerm_storage_account",
            "storage_account_name",
            "name"
        ],
        [
            "azurerm_storage_blob",
            "azurerm_storage_container",
            "storage_container_name",
            "name"
        ]
    ],
    "azurerm_storage_container": [
        [
            "azurerm_storage_container",
            "azurerm_storage_account",
            "storage_account_name",
            "name"
        ]
    ],
    "azurerm_subnet": [
        [
            "azurerm_subnet",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_subnet",
            "azurerm_virtual_network",
            "virtual_network_name",
            "name"
        ]
    ],
    "azurerm_subnet_nat_gateway_association": [
        [
            "azurerm_subnet_nat_gateway_association",
            "azurerm_nat_gateway",
            "nat_gateway_id",
            "id"
        ],
        [
            "azurerm_subnet_nat_gateway_association",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_subnet_network_security_group_association": [
        [
            "azurerm_subnet_network_security_group_association",
            "azurerm_network_security_group",
            "network_security_group_id",
            "id"
        ],
        [
            "azurerm_subnet_network_security_group_association",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ],
        [
            "azurerm_subnet_network_security_group_association",
            "azurerm_virtual_network",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_subnet_route_table_association": [
        [
            "azurerm_subnet_route_table_association",
            "azurerm_route_table",
            "route_table_id",
            "id"
        ],
        [
            "azurerm_subnet_route_table_association",
            "azurerm_subnet",
            "subnet_id",
            "id"
        ]
    ],
    "azurerm_virtual_hub": [
        [
            "azurerm_virtual_hub",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_virtual_hub",
            "azurerm_virtual_wan",
            "virtual_wan_id",
            "id"
        ]
    ],
    "azurerm_virtual_hub_connection": [
        [
            "azurerm_virtual_hub_connection",
            "azurerm_virtual_network",
            "remote_virtual_network_id",
            "id"
        ],
        [
            "azurerm_virtual_hub_connection",
            "azurerm_virtual_hub",
            "virtual_hub_id",
            "id"
        ]
    ],
    "azurerm_virtual_machine": [
        [
            "azurerm_virtual_machine",
            "azurerm_network_interface",
            "network_interface_ids",
            "id"
        ],
        [
            "azurerm_virtual_machine",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_virtual_machine",
            "azurerm_network_interface",
            "primary_network_interface_id",
            "id"
        ]
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        [
            "azurerm_virtual_machine_data_disk_attachment",
            "azurerm_managed_disk",
            "managed_disk_id",
            "id"
        ],
        [
            "azurerm_virtual_machine_data_disk_attachment",
            "azurerm_linux_virtual_machine",
            "virtual_machine_id",
            "id"
        ],
        [
            "azurerm_virtual_machine_data_disk_attachment",
            "azurerm_windows_virtual_machine",
            "virtual_machine_id",
            "id"
        ],
        [
            "azurerm_virtual_machine_data_disk_attachment",
            "azurerm_virtual_machine",
            "virtual_machine_id",
            "id"
        ]
    ],
    "azurerm_virtual_network": [
        [
            "azurerm_virtual_network",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_virtual_network_gateway": [
        [
            "azurerm_virtual_network_gateway",
            "azurerm_public_ip",
            "ip_configuration.0.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_subnet",
            "ip_configuration.0.subnet_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_public_ip",
            "ip_configuration.1.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_subnet",
            "ip_configuration.1.subnet_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_public_ip",
            "ip_configuration.2.public_ip_address_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway",
            "azurerm_subnet",
            "ip_configuration.2.subnet_id",
            "id"
        ]
    ],
    "azurerm_virtual_network_gateway_connection": [
        [
            "azurerm_virtual_network_gateway_connection",
            "azurerm_local_network_gateway",
            "local_network_gateway_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway_connection",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_virtual_network_gateway_connection",
            "azurerm_virtual_network_gateway",
            "virtual_network_gateway_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway_connection",
            "azurerm_virtual_network_gateway",
            "peer_virtual_network_gateway_id",
            "id"
        ],
        [
            "azurerm_virtual_network_gateway_connection",
            "azurerm_express_route_circuit",
            "express_route_circuit_id",
            "id"
        ]
    ],
    "azurerm_virtual_network_peering": [
        [
            "azurerm_virtual_network_peering",
            "azurerm_virtual_network",
            "remote_virtual_network_id",
            "id"
        ],
        [
            "azurerm_virtual_network_peering",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_virtual_network_peering",
            "azurerm_virtual_network",
            "virtual_network_name",
            "name"
        ]
    ],
    "azurerm_virtual_wan": [
        [
            "azurerm_virtual_wan",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ]
    ],
    "azurerm_windows_virtual_machine": [
        [
            "azurerm_windows_virtual_machine",
            "azurerm_network_interface",
            "network_interface_ids",
            "id"
        ],
        [
            "azurerm_windows_virtual_machine",
            "azurerm_resource_group",
            "resource_group_name",
            "name"
        ],
        [
            "azurerm_windows_virtual_machine",
            "azurerm_resource_group",
            "network_interface_ids",
            "id"
        ]
    ]
}
TopoReferenceThenNegationList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    walk(resourceDict[addressThenNegation1][1]["values"], [pathThenNegation1, valueThenNegation1])
    idTypeThenNegation1 := resourceDict[addressThenNegation1][0]["type"]
    idTypeThenNegation2 := resourceDependencyView[idTypeThenNegation1][ThenNegationA][1]
    idTypeThenNegation1 in object.keys(resourceView)
    idTypeThenNegation2 in object.keys(resourceView)
    attrThenNegation1 := [elemStr | elem := pathThenNegation1[n]; elemStr := sprintf("%v", [elem])]
    idAttrThenNegation1 := concat(".", attrThenNegation1)
    is_null(valueThenNegation1)
    idAttrThenNegation1 == resourceDependencyView[idTypeThenNegation1][ThenNegationA][2]
    idAttrThenNegation2 := resourceDependencyView[idTypeThenNegation1][ThenNegationA][3]

    contains(idTypeIfReference2, "azurerm")
    addressIfReference1 == addressThenNegation1
    rule := concat(" ", ["ReferenceThenNegation", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenNegation1, idAttrThenNegation1, "String", "####", idTypeThenNegation2, idAttrThenNegation2, "String"])
]

TopoReferenceThenAssociateList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    addressThenAssociate1 := dependencyList[ThenAssociateA][1]
    addressThenAssociate2 := dependencyList[ThenAssociateB][1]
    addressThenAssociate3 := dependencyList[ThenAssociateA][0]
    addressThenAssociate3 == dependencyList[ThenAssociateB][0]
    #addressThenAssociate1 != addressThenAssociate2
    ThenAssociateA != ThenAssociateB
    not addressThenAssociate2 in referencesPredDict[addressThenAssociate1]
    not addressThenAssociate1 in referencesPredDict[addressThenAssociate2]
    idTypeThenAssociate1 := resourceDict[addressThenAssociate1][0]["type"]
    idTypeThenAssociate2 := resourceDict[addressThenAssociate2][0]["type"]
    idTypeThenAssociate3 := resourceDict[addressThenAssociate3][0]["type"]
    idTypeThenAssociate1 in object.keys(resourceView)
    idTypeThenAssociate2 in object.keys(resourceView)
    idTypeThenAssociate3 in object.keys(resourceView)
    idAttrThenAssociate3 := dependencyList[ThenAssociateA][2]
    idAttrThenAssociate4 := dependencyList[ThenAssociateB][2]
    idAttrThenAssociate1 := dependencyList[ThenAssociateA][3]
    idAttrThenAssociate2 := dependencyList[ThenAssociateB][3]
    idAttrThenAssociate3 <= idAttrThenAssociate4
    attrSliceThenAssociate3 := dependencyList[ThenAssociateA][5]
    attrSliceThenAssociate4 := dependencyList[ThenAssociateB][5]
    attrSliceThenAssociate1 := dependencyList[ThenAssociateA][5]
    attrSliceThenAssociate2 := dependencyList[ThenAssociateB][5]

    contains(idTypeIfReference2, "azurerm")
    contains(idTypeThenAssociate1, "azurerm")
    contains(idTypeThenAssociate2, "azurerm")
    addressIfReference1 == addressThenAssociate3
    addressIfReference2 == addressThenAssociate1
    rule := concat(" ", ["ReferenceThenAssociate", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenAssociate3, idAttrThenAssociate3, "String", "####", idTypeThenAssociate3, idAttrThenAssociate4, "String", "####", idTypeThenAssociate1, idAttrThenAssociate1, "String", "####", idTypeThenAssociate2, idAttrThenAssociate2, "String"])
]

TopoReferenceThenIntraList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    addressThenIntra1 := dependencyList[ThenIntraA][0]
    addressThenIntra2 := dependencyList[ThenIntraA][1]
    addressThenIntra1 == dependencyList[ThenIntraB][0]
    addressThenIntra2 == dependencyList[ThenIntraB][1]
    ThenIntraA != ThenIntraB
    idTypeThenIntra1 := resourceDict[addressThenIntra1][0]["type"]
    idTypeThenIntra2 := resourceDict[addressThenIntra2][0]["type"]
    idTypeThenIntra1 in object.keys(resourceView)
    idTypeThenIntra2 in object.keys(resourceView)
    idAttrThenIntra1 := dependencyList[ThenIntraA][2]
    idAttrThenIntra2 := dependencyList[ThenIntraB][2]
    idAttrThenIntra3 := dependencyList[ThenIntraA][3]
    idAttrThenIntra4 := dependencyList[ThenIntraB][3]
    idAttrThenIntra1 <= idAttrThenIntra2
    #attrSliceThenIntra1 := dependencyList[ThenIntraA][4]
    #attrSliceThenIntra2 := dependencyList[ThenIntraB][4]
    #attrSliceThenIntra3 := dependencyList[ThenIntraA][5]
    #attrSliceThenIntra4 := dependencyList[ThenIntraB][5]

    contains(idTypeIfReference2, "azurerm")
    contains(idTypeThenIntra2, "azurerm")
    addressIfReference1 == addressThenIntra1
    addressIfReference2 == addressThenIntra2
    rule := concat(" ", ["ReferenceThenIntra", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenIntra1, idAttrThenIntra1, "String", "####", idTypeThenIntra1, idAttrThenIntra2, "String", "####", idTypeThenIntra2, idAttrThenIntra3, "String", "####", idTypeThenIntra2, idAttrThenIntra4, "String"])
]

TopoReferenceThenBranchList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    addressThenBranch1 := dependencyList[ThenBranchA][0]
    addressThenBranch2 := dependencyList[ThenBranchB][0]
    addressThenBranch3 := dependencyList[ThenBranchA][1]
    addressThenBranch3 == dependencyList[ThenBranchB][1]
    ThenBranchA != ThenBranchB
    idTypeThenBranch1 := resourceDict[addressThenBranch1][0]["type"]
    idTypeThenBranch2 := resourceDict[addressThenBranch2][0]["type"]
    idTypeThenBranch3 := resourceDict[addressThenBranch3][0]["type"]
    idTypeThenBranch1 in object.keys(resourceView)
    idTypeThenBranch2 in object.keys(resourceView)
    idTypeThenBranch3 in object.keys(resourceView)
    # idTypeThenBranch1 == idTypeThenBranch2
    # addressThenBranch1 < addressThenBranch2
    idAttrThenBranch1 := dependencyList[ThenBranchA][2]
    idAttrThenBranch2 := dependencyList[ThenBranchB][2]
    idAttrThenBranch1 <= idAttrThenBranch2
    idAttrThenBranch3 := dependencyList[ThenBranchA][3]
    idAttrThenBranch4 := dependencyList[ThenBranchB][3]
    attrSliceThenBranch1 := dependencyList[ThenBranchA][4]
    attrSliceThenBranch2 := dependencyList[ThenBranchB][4]
    attrSliceThenBranch3 := dependencyList[ThenBranchA][5]
    attrSliceThenBranch4 := dependencyList[ThenBranchB][5]

    contains(idTypeIfReference2, "azurerm")
    contains(idTypeThenBranch2, "azurerm")
    contains(idTypeThenBranch3, "azurerm")
    addressIfReference1 == addressThenBranch1
    addressIfReference2 == addressThenBranch2
    rule := concat(" ", ["ReferenceThenBranch", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenBranch1, idAttrThenBranch1, "String", "####", idTypeThenBranch2, idAttrThenBranch2, "String", "####", idTypeThenBranch3, idAttrThenBranch3, "String", "####", idTypeThenBranch3, idAttrThenBranch4, "String"])
]

TopoReferenceThenConflictChildList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    addressThenConflictChild1 := dependencyList[ThenConflictChildA][0]
    addressThenConflictChild2 := dependencyList[ThenConflictChildA][1]
    idTypeThenConflictChild1 := resourceDict[addressThenConflictChild1][0]["type"]
    idTypeThenConflictChild2 := resourceDict[addressThenConflictChild2][0]["type"]
    idTypeThenConflictChild1 in object.keys(resourceView)
    idTypeThenConflictChild2 in object.keys(resourceView)
    #idAttrThenConflictChild1 := dependencyList[ThenConflictChildA][2]
    #idAttrThenConflictChild2 := dependencyList[ThenConflictChildA][3]
    addrListThenConflictChild := [address | address := dependencyList[n][0]; addressThenConflictChild2 == dependencyList[n][1]; address != addressThenConflictChild1; resourceDict[address][0]["type"] == idTypeThenConflictChild1]
    addrNumThenConflictChild := count(addrListThenConflictChild)
    addrNumThenConflictChild == 0
    #attrSliceThenConflictChild1 := dependencyList[ThenConflictChildA][4]
    #attrSliceThenConflictChild2 := dependencyList[ThenConflictChildA][5]

    contains(idTypeIfReference2, "azurerm")
    contains(idTypeThenConflictChild2, "azurerm")
    addressIfReference1 == addressThenConflictChild1
    addressIfReference2 == addressThenConflictChild2
    not contains(addressIfReference1, "azurerm_resource_group")
    not contains(addressIfReference2, "azurerm_resource_group")
    rule := concat(" ", ["ReferenceThenConflictChild", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenConflictChild1, "PLACEHOLDER", "String", "####", idTypeThenConflictChild2, "PLACEHOLDER", "String"])
]

TopoReferenceThenExclusiveList := [rule |

    addressIfReference1 := dependencyList[IfReferenceA][0]
    addressIfReference2 := dependencyList[IfReferenceA][1]
    idTypeIfReference1 := resourceDict[addressIfReference1][0]["type"]
    idTypeIfReference2 := resourceDict[addressIfReference2][0]["type"]
    idTypeIfReference1 in object.keys(resourceView)
    idTypeIfReference2 in object.keys(resourceView)
    #idTypeIfReference1 != idTypeIfReference2
    idAttrIfReference1 := dependencyList[IfReferenceA][2]
    idAttrIfReference2 := dependencyList[IfReferenceA][3]
    attrSliceIfReference1 := dependencyList[IfReferenceA][4]
    attrSliceIfReference2 := dependencyList[IfReferenceA][5]
    idTypeIfReference1 == "azurerm_application_gateway"

    addressThenExclusive1 := dependencyList[ThenExclusiveA][0]
    addressThenExclusive2 := dependencyList[ThenExclusiveA][1]
    idTypeThenExclusive1 := resourceDict[addressThenExclusive1][0]["type"]
    idTypeThenExclusive2 := resourceDict[addressThenExclusive2][0]["type"]
    idTypeThenExclusive1 in object.keys(resourceView)
    idTypeThenExclusive2 in object.keys(resourceView)
    #idAttrThenExclusive1 := dependencyList[ThenExclusiveA][2]
    #idAttrThenExclusive2 := dependencyList[ThenExclusiveA][3]
    addrListThenExclusive := [address | address := dependencyList[n][0]; addressThenExclusive2 == dependencyList[n][1]; address != addressThenExclusive1]
    addrNumThenExclusive := count(addrListThenExclusive)
    addrNumThenExclusive == 0
    #attrSliceThenExclusive1 := dependencyList[ThenExclusiveA][4]
    #attrSliceThenExclusive2 := dependencyList[ThenExclusiveA][5]

    contains(idTypeIfReference2, "azurerm")
    contains(idTypeThenExclusive2, "azurerm")
    addressIfReference1 == addressThenExclusive1
    addressIfReference2 == addressThenExclusive2
    rule := concat(" ", ["ReferenceThenExclusive", "####", idTypeIfReference1, idAttrIfReference1, "String", "####", idTypeIfReference2, idAttrIfReference2, "String", "####", idTypeThenExclusive1, "PLACEHOLDER", "String", "####", idTypeThenExclusive2, "PLACEHOLDER", "String"])
]

TopoAncestorReferenceThenBranchList := [rule |

    addressIfAncestorReference2 in naiveAncestorDict[addressIfAncestorReference1]
    idTypeIfAncestorReference1 := resourceDict[addressIfAncestorReference1][0]["type"]
    idTypeIfAncestorReference1 in object.keys(resourceView)
    idTypeIfAncestorReference2 := resourceDict[addressIfAncestorReference2][0]["type"]
    idTypeIfAncestorReference2 in object.keys(resourceView)
    not addressIfAncestorReference2 in referencesPredDict[addressIfAncestorReference1]
    addressIfAncestorReference1 != addressIfAncestorReference2
    idTypeIfAncestorReference1 != idTypeIfAncestorReference2
    idTypeIfAncestorReference1 == "azurerm_application_gateway"

    addressThenBranch1 := dependencyList[ThenBranchA][0]
    addressThenBranch2 := dependencyList[ThenBranchB][0]
    addressThenBranch3 := dependencyList[ThenBranchA][1]
    addressThenBranch3 == dependencyList[ThenBranchB][1]
    ThenBranchA != ThenBranchB
    idTypeThenBranch1 := resourceDict[addressThenBranch1][0]["type"]
    idTypeThenBranch2 := resourceDict[addressThenBranch2][0]["type"]
    idTypeThenBranch3 := resourceDict[addressThenBranch3][0]["type"]
    idTypeThenBranch1 in object.keys(resourceView)
    idTypeThenBranch2 in object.keys(resourceView)
    idTypeThenBranch3 in object.keys(resourceView)
    # idTypeThenBranch1 == idTypeThenBranch2
    # addressThenBranch1 < addressThenBranch2
    idAttrThenBranch1 := dependencyList[ThenBranchA][2]
    idAttrThenBranch2 := dependencyList[ThenBranchB][2]
    idAttrThenBranch1 <= idAttrThenBranch2
    idAttrThenBranch3 := dependencyList[ThenBranchA][3]
    idAttrThenBranch4 := dependencyList[ThenBranchB][3]
    attrSliceThenBranch1 := dependencyList[ThenBranchA][4]
    attrSliceThenBranch2 := dependencyList[ThenBranchB][4]
    attrSliceThenBranch3 := dependencyList[ThenBranchA][5]
    attrSliceThenBranch4 := dependencyList[ThenBranchB][5]

    contains(idTypeIfAncestorReference2, "azurerm")
    contains(idTypeThenBranch2, "azurerm")
    contains(idTypeThenBranch3, "azurerm")
    addressIfAncestorReference1 == addressThenBranch1
    addressIfAncestorReference2 == addressThenBranch2
    rule := concat(" ", ["AncestorReferenceThenBranch", "####", idTypeIfAncestorReference1, "PLACEHOLDER", "String", "####", idTypeIfAncestorReference2, "PLACEHOLDER", "String", "####", idTypeThenBranch1, idAttrThenBranch1, "String", "####", idTypeThenBranch2, idAttrThenBranch2, "String", "####", idTypeThenBranch3, idAttrThenBranch3, "String", "####", idTypeThenBranch3, idAttrThenBranch4, "String"])
]

TopoAssociateThenIntraList := [rule |

    addressIfAssociate1 := dependencyList[IfAssociateA][1]
    addressIfAssociate2 := dependencyList[IfAssociateB][1]
    addressIfAssociate3 := dependencyList[IfAssociateA][0]
    addressIfAssociate3 == dependencyList[IfAssociateB][0]
    #addressIfAssociate1 != addressIfAssociate2
    IfAssociateA != IfAssociateB
    not addressIfAssociate2 in referencesPredDict[addressIfAssociate1]
    not addressIfAssociate1 in referencesPredDict[addressIfAssociate2]
    idTypeIfAssociate1 := resourceDict[addressIfAssociate1][0]["type"]
    idTypeIfAssociate2 := resourceDict[addressIfAssociate2][0]["type"]
    idTypeIfAssociate3 := resourceDict[addressIfAssociate3][0]["type"]
    idTypeIfAssociate1 in object.keys(resourceView)
    idTypeIfAssociate2 in object.keys(resourceView)
    idTypeIfAssociate3 in object.keys(resourceView)
    idAttrIfAssociate3 := dependencyList[IfAssociateA][2]
    idAttrIfAssociate4 := dependencyList[IfAssociateB][2]
    idAttrIfAssociate1 := dependencyList[IfAssociateA][3]
    idAttrIfAssociate2 := dependencyList[IfAssociateB][3]
    idAttrIfAssociate3 <= idAttrIfAssociate4
    attrSliceIfAssociate3 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate4 := dependencyList[IfAssociateB][5]
    attrSliceIfAssociate1 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate2 := dependencyList[IfAssociateB][5]
    idTypeIfAssociate3 == "azurerm_application_gateway"

    addressThenIntra1 := dependencyList[ThenIntraA][0]
    addressThenIntra2 := dependencyList[ThenIntraA][1]
    addressThenIntra1 == dependencyList[ThenIntraB][0]
    addressThenIntra2 == dependencyList[ThenIntraB][1]
    ThenIntraA != ThenIntraB
    idTypeThenIntra1 := resourceDict[addressThenIntra1][0]["type"]
    idTypeThenIntra2 := resourceDict[addressThenIntra2][0]["type"]
    idTypeThenIntra1 in object.keys(resourceView)
    idTypeThenIntra2 in object.keys(resourceView)
    idAttrThenIntra1 := dependencyList[ThenIntraA][2]
    idAttrThenIntra2 := dependencyList[ThenIntraB][2]
    idAttrThenIntra3 := dependencyList[ThenIntraA][3]
    idAttrThenIntra4 := dependencyList[ThenIntraB][3]
    idAttrThenIntra1 <= idAttrThenIntra2
    #attrSliceThenIntra1 := dependencyList[ThenIntraA][4]
    #attrSliceThenIntra2 := dependencyList[ThenIntraB][4]
    #attrSliceThenIntra3 := dependencyList[ThenIntraA][5]
    #attrSliceThenIntra4 := dependencyList[ThenIntraB][5]

    contains(idTypeIfAssociate1, "azurerm")
    contains(idTypeIfAssociate2, "azurerm")
    contains(idTypeThenIntra2, "azurerm")
    addressIfAssociate3 == addressThenIntra1
    addressIfAssociate1 == addressThenIntra2
    addressIfAssociate2 == addressThenIntra2
    rule := concat(" ", ["AssociateThenIntra", "####", idTypeIfAssociate3, idAttrIfAssociate3, "String", "####", idTypeIfAssociate3, idAttrIfAssociate4, "String", "####", idTypeIfAssociate1, idAttrIfAssociate1, "String", "####", idTypeIfAssociate2, idAttrIfAssociate2, "String", "####", idTypeThenIntra1, idAttrThenIntra1, "String", "####", idTypeThenIntra1, idAttrThenIntra2, "String", "####", idTypeThenIntra2, idAttrThenIntra3, "String", "####", idTypeThenIntra2, idAttrThenIntra4, "String"])
]

TopoAssociateThenBranchList := [rule |

    addressIfAssociate1 := dependencyList[IfAssociateA][1]
    addressIfAssociate2 := dependencyList[IfAssociateB][1]
    addressIfAssociate3 := dependencyList[IfAssociateA][0]
    addressIfAssociate3 == dependencyList[IfAssociateB][0]
    #addressIfAssociate1 != addressIfAssociate2
    IfAssociateA != IfAssociateB
    not addressIfAssociate2 in referencesPredDict[addressIfAssociate1]
    not addressIfAssociate1 in referencesPredDict[addressIfAssociate2]
    idTypeIfAssociate1 := resourceDict[addressIfAssociate1][0]["type"]
    idTypeIfAssociate2 := resourceDict[addressIfAssociate2][0]["type"]
    idTypeIfAssociate3 := resourceDict[addressIfAssociate3][0]["type"]
    idTypeIfAssociate1 in object.keys(resourceView)
    idTypeIfAssociate2 in object.keys(resourceView)
    idTypeIfAssociate3 in object.keys(resourceView)
    idAttrIfAssociate3 := dependencyList[IfAssociateA][2]
    idAttrIfAssociate4 := dependencyList[IfAssociateB][2]
    idAttrIfAssociate1 := dependencyList[IfAssociateA][3]
    idAttrIfAssociate2 := dependencyList[IfAssociateB][3]
    idAttrIfAssociate3 <= idAttrIfAssociate4
    attrSliceIfAssociate3 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate4 := dependencyList[IfAssociateB][5]
    attrSliceIfAssociate1 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate2 := dependencyList[IfAssociateB][5]
    idTypeIfAssociate3 == "azurerm_application_gateway"

    addressThenBranch1 := dependencyList[ThenBranchA][0]
    addressThenBranch2 := dependencyList[ThenBranchB][0]
    addressThenBranch3 := dependencyList[ThenBranchA][1]
    addressThenBranch3 == dependencyList[ThenBranchB][1]
    ThenBranchA != ThenBranchB
    idTypeThenBranch1 := resourceDict[addressThenBranch1][0]["type"]
    idTypeThenBranch2 := resourceDict[addressThenBranch2][0]["type"]
    idTypeThenBranch3 := resourceDict[addressThenBranch3][0]["type"]
    idTypeThenBranch1 in object.keys(resourceView)
    idTypeThenBranch2 in object.keys(resourceView)
    idTypeThenBranch3 in object.keys(resourceView)
    # idTypeThenBranch1 == idTypeThenBranch2
    # addressThenBranch1 < addressThenBranch2
    idAttrThenBranch1 := dependencyList[ThenBranchA][2]
    idAttrThenBranch2 := dependencyList[ThenBranchB][2]
    idAttrThenBranch1 <= idAttrThenBranch2
    idAttrThenBranch3 := dependencyList[ThenBranchA][3]
    idAttrThenBranch4 := dependencyList[ThenBranchB][3]
    attrSliceThenBranch1 := dependencyList[ThenBranchA][4]
    attrSliceThenBranch2 := dependencyList[ThenBranchB][4]
    attrSliceThenBranch3 := dependencyList[ThenBranchA][5]
    attrSliceThenBranch4 := dependencyList[ThenBranchB][5]

    contains(idTypeIfAssociate1, "azurerm")
    contains(idTypeIfAssociate2, "azurerm")
    contains(idTypeThenBranch2, "azurerm")
    contains(idTypeThenBranch3, "azurerm")
    addressIfAssociate1 == addressThenBranch1
    addressIfAssociate2 == addressThenBranch2
    rule := concat(" ", ["AssociateThenBranch", "####", idTypeIfAssociate3, idAttrIfAssociate3, "String", "####", idTypeIfAssociate3, idAttrIfAssociate4, "String", "####", idTypeIfAssociate1, idAttrIfAssociate1, "String", "####", idTypeIfAssociate2, idAttrIfAssociate2, "String", "####", idTypeThenBranch1, idAttrThenBranch1, "String", "####", idTypeThenBranch2, idAttrThenBranch2, "String", "####", idTypeThenBranch3, idAttrThenBranch3, "String", "####", idTypeThenBranch3, idAttrThenBranch4, "String"])
]

TopoAssociateThenAncestorBranchList := [rule |

    addressIfAssociate1 := dependencyList[IfAssociateA][1]
    addressIfAssociate2 := dependencyList[IfAssociateB][1]
    addressIfAssociate3 := dependencyList[IfAssociateA][0]
    addressIfAssociate3 == dependencyList[IfAssociateB][0]
    #addressIfAssociate1 != addressIfAssociate2
    IfAssociateA != IfAssociateB
    not addressIfAssociate2 in referencesPredDict[addressIfAssociate1]
    not addressIfAssociate1 in referencesPredDict[addressIfAssociate2]
    idTypeIfAssociate1 := resourceDict[addressIfAssociate1][0]["type"]
    idTypeIfAssociate2 := resourceDict[addressIfAssociate2][0]["type"]
    idTypeIfAssociate3 := resourceDict[addressIfAssociate3][0]["type"]
    idTypeIfAssociate1 in object.keys(resourceView)
    idTypeIfAssociate2 in object.keys(resourceView)
    idTypeIfAssociate3 in object.keys(resourceView)
    idAttrIfAssociate3 := dependencyList[IfAssociateA][2]
    idAttrIfAssociate4 := dependencyList[IfAssociateB][2]
    idAttrIfAssociate1 := dependencyList[IfAssociateA][3]
    idAttrIfAssociate2 := dependencyList[IfAssociateB][3]
    idAttrIfAssociate3 <= idAttrIfAssociate4
    attrSliceIfAssociate3 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate4 := dependencyList[IfAssociateB][5]
    attrSliceIfAssociate1 := dependencyList[IfAssociateA][5]
    attrSliceIfAssociate2 := dependencyList[IfAssociateB][5]
    addressThenAncestorBranch1 := addressIfAssociate1
    addressThenAncestorBranch2 := addressIfAssociate2
    idTypeIfAssociate3 == "azurerm_application_gateway"

    addressThenAncestorBranch3 in naiveAncestorDict[addressThenAncestorBranch1]
    addressThenAncestorBranch3 in naiveAncestorDict[addressThenAncestorBranch2]
    idTypeThenAncestorBranch1 := resourceDict[addressThenAncestorBranch1][0]["type"]
    idTypeThenAncestorBranch2 := resourceDict[addressThenAncestorBranch2][0]["type"]
    idTypeThenAncestorBranch3 := resourceDict[addressThenAncestorBranch3][0]["type"]
    idTypeThenAncestorBranch1 in object.keys(resourceView)
    idTypeThenAncestorBranch2 in object.keys(resourceView)
    idTypeThenAncestorBranch3 in object.keys(resourceView)
    not addressThenAncestorBranch2 in naiveAncestorDict[addressThenAncestorBranch1]
    not addressThenAncestorBranch1 in naiveAncestorDict[addressThenAncestorBranch2]
    #not addressThenAncestorBranch3 in referencesPredDict[addressThenAncestorBranch1]
    not addressThenAncestorBranch3 in referencesPredDict[addressThenAncestorBranch2]

    contains(idTypeIfAssociate1, "azurerm")
    contains(idTypeIfAssociate2, "azurerm")
    contains(idTypeThenAncestorBranch2, "azurerm")
    contains(idTypeThenAncestorBranch3, "azurerm")
    not addressThenAncestorBranch3 in referencesPredDict[addressThenAncestorBranch1]
    rule := concat(" ", ["AssociateThenAncestorBranch", "####", idTypeIfAssociate3, idAttrIfAssociate3, "String", "####", idTypeIfAssociate3, idAttrIfAssociate4, "String", "####", idTypeIfAssociate1, idAttrIfAssociate1, "String", "####", idTypeIfAssociate2, idAttrIfAssociate2, "String", "####", idTypeThenAncestorBranch1, "PLACEHOLDER", "String", "####", idTypeThenAncestorBranch2, "PLACEHOLDER", "String", "####", idTypeThenAncestorBranch3, "PLACEHOLDER", "String", "####", idTypeThenAncestorBranch3, "PLACEHOLDER", "String"])
]

rule1 := TopoReferenceThenNegationList
rule2 := array.concat(rule1, TopoReferenceThenAssociateList)
rule3 := array.concat(rule2, TopoReferenceThenIntraList)
rule4 := array.concat(rule3, TopoReferenceThenBranchList)
rule5 := array.concat(rule4, TopoReferenceThenConflictChildList)
rule6 := array.concat(rule5, TopoReferenceThenExclusiveList)
rule7 := array.concat(rule6, TopoAncestorReferenceThenBranchList)
rule8 := array.concat(rule7, TopoAssociateThenIntraList)
rule9 := array.concat(rule8, TopoAssociateThenBranchList)
rule10 := array.concat(rule9, TopoAssociateThenAncestorBranchList)
resultList := rule10
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
            "azuread": {
                "full_name": "registry.terraform.io/hashicorp/azuread",
                "name": "azuread"
            },
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
            "module.KeyVault:azurerm": {
                "expressions": {
                    "features": [
                        {
                            "key_vault": [
                                {
                                    "purge_soft_deleted_secrets_on_destroy": {
                                        "constant_value": true
                                    },
                                    "recover_soft_deleted_secrets": {
                                        "constant_value": true
                                    }
                                }
                            ]
                        }
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "module_address": "module.KeyVault",
                "name": "azurerm"
            }
        },
        "root_module": {
            "module_calls": {
                "AKS": {
                    "depends_on": [
                        "module.AppGateway",
                        "module.LogAnalytics",
                        "module.NATGateway"
                    ],
                    "expressions": {
                        "admin_group_object_id": {
                            "references": [
                                "azuread_group.admin_group.id",
                                "azuread_group.admin_group"
                            ]
                        },
                        "appgw_aks_subnet": {
                            "references": [
                                "module.AppGateway.aks_subnet_id",
                                "module.AppGateway"
                            ]
                        },
                        "appgw_gw_id": {
                            "references": [
                                "module.AppGateway.appgw_id",
                                "module.AppGateway"
                            ]
                        },
                        "appgw_gw_subnet": {
                            "references": [
                                "module.AppGateway.appgw_subnet_id",
                                "module.AppGateway"
                            ]
                        },
                        "cluster_name": {
                            "references": [
                                "var.cluster_name"
                            ]
                        },
                        "dns_service_ip": {
                            "references": [
                                "var.aks_dns_service_ip"
                            ]
                        },
                        "kubernetes_version": {
                            "references": [
                                "var.kubernetes_version"
                            ]
                        },
                        "la_workspace_id": {
                            "references": [
                                "module.LogAnalytics.la_workspace_id",
                                "module.LogAnalytics"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "nat_gateway_id": {
                            "references": [
                                "module.NATGateway.nat_gateway_id",
                                "module.NATGateway"
                            ]
                        },
                        "node_count": {
                            "references": [
                                "var.node_count"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "service_cidr": {
                            "references": [
                                "var.aks_service_cidr"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "var.vm_size"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "agic_client_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                        "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity",
                                        "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0]",
                                        "azurerm_kubernetes_cluster.k8s.ingress_application_gateway",
                                        "azurerm_kubernetes_cluster.k8s"
                                    ]
                                }
                            },
                            "aks_cluster_principal_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.k8s.identity[0].principal_id",
                                        "azurerm_kubernetes_cluster.k8s.identity[0]",
                                        "azurerm_kubernetes_cluster.k8s.identity",
                                        "azurerm_kubernetes_cluster.k8s"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_kubernetes_cluster.k8s",
                                "expressions": {
                                    "azure_active_directory_role_based_access_control": [
                                        {
                                            "admin_group_object_ids": {
                                                "references": [
                                                    "var.admin_group_object_id"
                                                ]
                                            },
                                            "azure_rbac_enabled": {
                                                "constant_value": true
                                            },
                                            "managed": {
                                                "constant_value": true
                                            }
                                        }
                                    ],
                                    "default_node_pool": [
                                        {
                                            "enable_auto_scaling": {
                                                "constant_value": true
                                            },
                                            "max_count": {
                                                "constant_value": 5
                                            },
                                            "min_count": {
                                                "references": [
                                                    "var.node_count"
                                                ]
                                            },
                                            "name": {
                                                "constant_value": "agentpool"
                                            },
                                            "orchestrator_version": {
                                                "references": [
                                                    "var.kubernetes_version"
                                                ]
                                            },
                                            "type": {
                                                "constant_value": "VirtualMachineScaleSets"
                                            },
                                            "vm_size": {
                                                "references": [
                                                    "var.vm_size"
                                                ]
                                            },
                                            "vnet_subnet_id": {
                                                "references": [
                                                    "var.appgw_aks_subnet"
                                                ]
                                            }
                                        }
                                    ],
                                    "dns_prefix": {
                                        "references": [
                                            "var.cluster_name"
                                        ]
                                    },
                                    "identity": [
                                        {
                                            "type": {
                                                "constant_value": "SystemAssigned"
                                            }
                                        }
                                    ],
                                    "ingress_application_gateway": [
                                        {
                                            "gateway_id": {
                                                "references": [
                                                    "var.appgw_gw_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "kubernetes_version": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    },
                                    "local_account_disabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_name"
                                        ]
                                    },
                                    "network_profile": [
                                        {
                                            "dns_service_ip": {
                                                "references": [
                                                    "var.dns_service_ip"
                                                ]
                                            },
                                            "load_balancer_sku": {
                                                "constant_value": "standard"
                                            },
                                            "network_plugin": {
                                                "constant_value": "azure"
                                            },
                                            "outbound_type": {
                                                "constant_value": "userAssignedNATGateway"
                                            },
                                            "service_cidr": {
                                                "references": [
                                                    "var.service_cidr"
                                                ]
                                            }
                                        }
                                    ],
                                    "node_resource_group": {
                                        "references": [
                                            "var.cluster_name"
                                        ]
                                    },
                                    "oms_agent": [
                                        {
                                            "log_analytics_workspace_id": {
                                                "references": [
                                                    "var.la_workspace_id"
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
                                "name": "k8s",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            },
                            {
                                "address": "azurerm_role_assignment.node_infrastructure_update_scale_set",
                                "depends_on": [
                                    "azurerm_kubernetes_cluster.k8s"
                                ],
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.k8s.kubelet_identity[0]",
                                            "azurerm_kubernetes_cluster.k8s.kubelet_identity",
                                            "azurerm_kubernetes_cluster.k8s"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Virtual Machine Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "data.azurerm_resource_group.node_resource_group.id",
                                            "data.azurerm_resource_group.node_resource_group"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "node_infrastructure_update_scale_set",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "data.azurerm_resource_group.node_resource_group",
                                "depends_on": [
                                    "azurerm_kubernetes_cluster.k8s"
                                ],
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.k8s.node_resource_group",
                                            "azurerm_kubernetes_cluster.k8s"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "node_resource_group",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "admin_group_object_id": {},
                            "appgw_aks_subnet": {},
                            "appgw_gw_id": {},
                            "appgw_gw_subnet": {},
                            "cluster_name": {},
                            "dns_service_ip": {},
                            "kubernetes_version": {},
                            "la_workspace_id": {},
                            "location": {},
                            "nat_gateway_id": {},
                            "node_count": {},
                            "resource_group_name": {
                                "default": "AKS_Deployment_RG"
                            },
                            "service_cidr": {},
                            "vm_size": {}
                        }
                    },
                    "source": "./Modules/AKS"
                },
                "AppGateway": {
                    "depends_on": [
                        "azurerm_resource_group.rg1",
                        "module.NATGateway"
                    ],
                    "expressions": {
                        "aks_subnet_name": {
                            "references": [
                                "var.aks_subnet_name"
                            ]
                        },
                        "aks_subnet_pool": {
                            "references": [
                                "var.aks_subnet_pool"
                            ]
                        },
                        "appgw_name": {
                            "references": [
                                "var.appgw_name"
                            ]
                        },
                        "appgw_subnet_name": {
                            "references": [
                                "var.appgw_subnet_name"
                            ]
                        },
                        "appgw_subnet_pool": {
                            "references": [
                                "var.appgw_subnet_pool"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "nat_gateway_id": {
                            "references": [
                                "module.NATGateway.nat_gateway_id",
                                "module.NATGateway"
                            ]
                        },
                        "public_ip_name": {
                            "references": [
                                "var.public_ip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "var.virtual_network_name"
                            ]
                        },
                        "vnet_address_pool": {
                            "references": [
                                "var.vnet_address_pool"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "aks_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.AKS_Subnet.id",
                                        "azurerm_subnet.AKS_Subnet"
                                    ]
                                }
                            },
                            "aks_vnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.AKS_VNet.id",
                                        "azurerm_virtual_network.AKS_VNet"
                                    ]
                                }
                            },
                            "appgw_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.network.id",
                                        "azurerm_application_gateway.network"
                                    ]
                                }
                            },
                            "appgw_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.AppGW_Subnet.id",
                                        "azurerm_subnet.AppGW_Subnet"
                                    ]
                                }
                            },
                            "public_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.AppGW_PIP.ip_address",
                                        "azurerm_public_ip.AppGW_PIP"
                                    ]
                                }
                            },
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.AppGW_PIP.id",
                                        "azurerm_public_ip.AppGW_PIP"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.network",
                                "depends_on": [
                                    "azurerm_public_ip.AppGW_PIP",
                                    "azurerm_subnet.AppGW_Subnet"
                                ],
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
                                                    "azurerm_public_ip.AppGW_PIP.id",
                                                    "azurerm_public_ip.AppGW_PIP"
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
                                                "constant_value": "my-gateway-ip-configuration"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "azurerm_subnet.AppGW_Subnet.id",
                                                    "azurerm_subnet.AppGW_Subnet"
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
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.appgw_name"
                                        ]
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
                                                "constant_value": 9
                                            },
                                            "rule_type": {
                                                "constant_value": "Basic"
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
                                                "constant_value": 2
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
                                "name": "network",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            },
                            {
                                "address": "azurerm_public_ip.AppGW_PIP",
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
                                            "var.public_ip_name"
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
                                "name": "AppGW_PIP",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_subnet.AKS_Subnet",
                                "depends_on": [
                                    "azurerm_virtual_network.AKS_VNet"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.aks_subnet_pool"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.aks_subnet_name"
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
                                "name": "AKS_Subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.AppGW_Subnet",
                                "depends_on": [
                                    "azurerm_virtual_network.AKS_VNet"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.appgw_subnet_pool"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.appgw_subnet_name"
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
                                "name": "AppGW_Subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet_nat_gateway_association.example",
                                "expressions": {
                                    "nat_gateway_id": {
                                        "references": [
                                            "var.nat_gateway_id"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "azurerm_subnet.AKS_Subnet.id",
                                            "azurerm_subnet.AKS_Subnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet_nat_gateway_association"
                            },
                            {
                                "address": "azurerm_virtual_network.AKS_VNet",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.vnet_address_pool"
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
                                    }
                                },
                                "mode": "managed",
                                "name": "AKS_VNet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "aks_subnet_name": {},
                            "aks_subnet_pool": {},
                            "appgw_name": {},
                            "appgw_subnet_name": {},
                            "appgw_subnet_pool": {},
                            "location": {},
                            "nat_gateway_id": {},
                            "public_ip_name": {},
                            "resource_group_name": {},
                            "virtual_network_name": {},
                            "vnet_address_pool": {}
                        }
                    },
                    "source": "./Modules/AppGateway"
                },
                "KeyVault": {
                    "expressions": {
                        "key_vault_name": {
                            "references": [
                                "var.key_vault_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "service_principal_name": {
                            "references": [
                                "module.ServicePrincipal.service_principal_name",
                                "module.ServicePrincipal"
                            ]
                        },
                        "service_principal_object_id": {
                            "references": [
                                "module.ServicePrincipal.service_principal_object_id",
                                "module.ServicePrincipal"
                            ]
                        },
                        "service_principal_tenant_id": {
                            "references": [
                                "module.ServicePrincipal.service_principal_tenant_id",
                                "module.ServicePrincipal"
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
                                    "enable_rbac_authorization": {
                                        "constant_value": true
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
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
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
                                            "var.service_principal_tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault",
                                "provider_config_key": "module.KeyVault:azurerm",
                                "schema_version": 2,
                                "type": "azurerm_key_vault"
                            },
                            {
                                "address": "data.azurerm_client_config.current",
                                "mode": "data",
                                "name": "current",
                                "provider_config_key": "module.KeyVault:azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            }
                        ],
                        "variables": {
                            "key_vault_name": {},
                            "location": {},
                            "resource_group_name": {},
                            "service_principal_name": {},
                            "service_principal_object_id": {},
                            "service_principal_tenant_id": {}
                        }
                    },
                    "source": "./Modules/KeyVault"
                },
                "LogAnalytics": {
                    "expressions": {
                        "la_workspace_name": {
                            "references": [
                                "var.la_workspace_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "la_workspace_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.id",
                                        "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_log_analytics_solution.Log_Analytics_Solution_ContainerInsights",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.location",
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
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
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "solution_name": {
                                        "constant_value": "ContainerInsights"
                                    },
                                    "workspace_name": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.name",
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
                                        ]
                                    },
                                    "workspace_resource_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.id",
                                            "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "Log_Analytics_Solution_ContainerInsights",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_log_analytics_solution"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.Log_Analytics_WorkSpace",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.la_workspace_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "PerGB2018"
                                    }
                                },
                                "mode": "managed",
                                "name": "Log_Analytics_WorkSpace",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            }
                        ],
                        "variables": {
                            "la_workspace_name": {},
                            "location": {},
                            "resource_group_name": {}
                        }
                    },
                    "source": "./Modules/LogAnalytics"
                },
                "NATGateway": {
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "nat_name": {
                            "references": [
                                "var.nat_name"
                            ]
                        },
                        "pip_name": {
                            "references": [
                                "var.nat_pip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "nat_gateway_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_nat_gateway.nat.id",
                                        "azurerm_nat_gateway.nat"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_nat_gateway.nat",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nat_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "nat",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_nat_gateway"
                            },
                            {
                                "address": "azurerm_nat_gateway_public_ip_association.nat_pip_assoc",
                                "expressions": {
                                    "nat_gateway_id": {
                                        "references": [
                                            "azurerm_nat_gateway.nat.id",
                                            "azurerm_nat_gateway.nat"
                                        ]
                                    },
                                    "public_ip_address_id": {
                                        "references": [
                                            "azurerm_public_ip.nat_pip.id",
                                            "azurerm_public_ip.nat_pip"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "nat_pip_assoc",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_nat_gateway_public_ip_association"
                            },
                            {
                                "address": "azurerm_public_ip.nat_pip",
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
                                            "var.pip_name"
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
                                "name": "nat_pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "location": {},
                            "nat_name": {},
                            "pip_name": {},
                            "resource_group_name": {}
                        }
                    },
                    "source": "./Modules/NATGateway"
                },
                "ServicePrincipal": {
                    "depends_on": [
                        "azurerm_resource_group.rg1"
                    ],
                    "expressions": {
                        "service_principal_name": {
                            "references": [
                                "var.service_principal_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "client_id": {
                                "expression": {
                                    "references": [
                                        "azuread_application.spn_app.client_id",
                                        "azuread_application.spn_app"
                                    ]
                                }
                            },
                            "client_secret": {
                                "expression": {
                                    "references": [
                                        "azuread_service_principal_password.spn_pass.value",
                                        "azuread_service_principal_password.spn_pass"
                                    ]
                                }
                            },
                            "service_principal_application_id": {
                                "expression": {
                                    "references": [
                                        "azuread_service_principal.spn.application_id",
                                        "azuread_service_principal.spn"
                                    ]
                                }
                            },
                            "service_principal_name": {
                                "expression": {
                                    "references": [
                                        "azuread_service_principal.spn.display_name",
                                        "azuread_service_principal.spn"
                                    ]
                                }
                            },
                            "service_principal_object_id": {
                                "expression": {
                                    "references": [
                                        "azuread_service_principal.spn.object_id",
                                        "azuread_service_principal.spn"
                                    ]
                                }
                            },
                            "service_principal_tenant_id": {
                                "expression": {
                                    "references": [
                                        "azuread_service_principal.spn.application_tenant_id",
                                        "azuread_service_principal.spn"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azuread_application.spn_app",
                                "expressions": {
                                    "display_name": {
                                        "references": [
                                            "var.service_principal_name"
                                        ]
                                    },
                                    "owners": {
                                        "references": [
                                            "data.azuread_client_config.current.object_id",
                                            "data.azuread_client_config.current"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "spn_app",
                                "provider_config_key": "azuread",
                                "schema_version": 2,
                                "type": "azuread_application"
                            },
                            {
                                "address": "azuread_service_principal.spn",
                                "expressions": {
                                    "app_role_assignment_required": {
                                        "constant_value": true
                                    },
                                    "client_id": {
                                        "references": [
                                            "azuread_application.spn_app.client_id",
                                            "azuread_application.spn_app"
                                        ]
                                    },
                                    "owners": {
                                        "references": [
                                            "data.azuread_client_config.current.object_id",
                                            "data.azuread_client_config.current"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "spn",
                                "provider_config_key": "azuread",
                                "schema_version": 0,
                                "type": "azuread_service_principal"
                            },
                            {
                                "address": "azuread_service_principal_password.spn_pass",
                                "expressions": {
                                    "service_principal_id": {
                                        "references": [
                                            "azuread_service_principal.spn.object_id",
                                            "azuread_service_principal.spn"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "spn_pass",
                                "provider_config_key": "azuread",
                                "schema_version": 1,
                                "type": "azuread_service_principal_password"
                            },
                            {
                                "address": "data.azuread_client_config.current",
                                "mode": "data",
                                "name": "current",
                                "provider_config_key": "azuread",
                                "schema_version": 0,
                                "type": "azuread_client_config"
                            }
                        ],
                        "variables": {
                            "service_principal_name": {}
                        }
                    },
                    "source": "./Modules/ServicePrincipal"
                }
            },
            "resources": [
                {
                    "address": "azuread_group.admin_group",
                    "expressions": {
                        "display_name": {
                            "references": [
                                "var.admin_group_name"
                            ]
                        },
                        "owners": {
                            "constant_value": [
                                "49b998a7-aa04-4db3-aaa7-426d9e2bfa92"
                            ]
                        },
                        "security_enabled": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "admin_group",
                    "provider_config_key": "azuread",
                    "schema_version": 0,
                    "type": "azuread_group"
                },
                {
                    "address": "azurerm_key_vault_secret.key_vault_secret",
                    "depends_on": [
                        "module.ServicePrincipal",
                        "azurerm_role_assignment.rolekv_spn",
                        "azurerm_role_assignment.rolekv_user"
                    ],
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "module.KeyVault.key_vault_id",
                                "module.KeyVault"
                            ]
                        },
                        "name": {
                            "references": [
                                "module.ServicePrincipal.client_id",
                                "module.ServicePrincipal"
                            ]
                        },
                        "value": {
                            "references": [
                                "module.ServicePrincipal.client_secret",
                                "module.ServicePrincipal"
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
                    "address": "azurerm_resource_group.rg1",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.rgname"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rg1",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.appgw_agic_role",
                    "depends_on": [
                        "module.AKS",
                        "module.AppGateway"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.AKS.agic_client_id",
                                "module.AKS"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "module.AppGateway.appgw_id",
                                "module.AppGateway"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw_agic_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.resourcegroup_agic_role",
                    "depends_on": [
                        "module.AKS",
                        "module.AppGateway"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.AKS.agic_client_id",
                                "module.AKS"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Reader"
                        },
                        "scope": {
                            "references": [
                                "azurerm_resource_group.rg1.id",
                                "azurerm_resource_group.rg1"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "resourcegroup_agic_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.rolekv_group",
                    "depends_on": [
                        "module.KeyVault",
                        "azuread_group.admin_group"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azuread_group.admin_group.id",
                                "azuread_group.admin_group"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "var.rgname",
                                "var.key_vault_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rolekv_group",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.rolekv_spn",
                    "depends_on": [
                        "module.KeyVault"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.ServicePrincipal.service_principal_object_id",
                                "module.ServicePrincipal"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "var.rgname",
                                "var.key_vault_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rolekv_spn",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.rolekv_user",
                    "depends_on": [
                        "module.KeyVault"
                    ],
                    "expressions": {
                        "principal_id": {
                            "constant_value": "49b998a7-aa04-4db3-aaa7-426d9e2bfa92"
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "var.rgname",
                                "var.key_vault_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rolekv_user",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.rolespn",
                    "depends_on": [
                        "module.ServicePrincipal"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.ServicePrincipal.service_principal_object_id",
                                "module.ServicePrincipal"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "constant_value": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111"
                        }
                    },
                    "mode": "managed",
                    "name": "rolespn",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.vnet_agic_role",
                    "depends_on": [
                        "module.AKS",
                        "module.AppGateway"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.AKS.agic_client_id",
                                "module.AKS"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "module.AppGateway.aks_vnet_id",
                                "module.AppGateway"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vnet_agic_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.vnet_k8s_role",
                    "depends_on": [
                        "module.AKS",
                        "module.AppGateway"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.AKS.aks_cluster_principal_id",
                                "module.AKS"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "module.AppGateway.aks_vnet_id",
                                "module.AppGateway"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vnet_k8s_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.AKS.azurerm_kubernetes_cluster.k8s",
                    "expressions": {
                        "azure_active_directory_role_based_access_control": [
                            {
                                "admin_group_object_ids": {
                                    "references": [
                                        "azuread_group.admin_group.id",
                                        "azuread_group.admin_group"
                                    ]
                                },
                                "azure_rbac_enabled": {
                                    "constant_value": true
                                },
                                "managed": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "default_node_pool": [
                            {
                                "enable_auto_scaling": {
                                    "constant_value": true
                                },
                                "max_count": {
                                    "constant_value": 5
                                },
                                "min_count": {
                                    "references": [
                                        "root.AKS.node_count"
                                    ]
                                },
                                "name": {
                                    "constant_value": "agentpool"
                                },
                                "orchestrator_version": {
                                    "references": [
                                        "root.AKS.kubernetes_version"
                                    ]
                                },
                                "type": {
                                    "constant_value": "VirtualMachineScaleSets"
                                },
                                "vm_size": {
                                    "references": [
                                        "root.AKS.vm_size"
                                    ]
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "module.AppGateway.aks_subnet_id",
                                        "module.AppGateway"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "root.AKS.cluster_name"
                            ]
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "ingress_application_gateway": [
                            {
                                "gateway_id": {
                                    "references": [
                                        "module.AppGateway.appgw_id",
                                        "module.AppGateway"
                                    ]
                                }
                            }
                        ],
                        "kubernetes_version": {
                            "references": [
                                "root.AKS.kubernetes_version"
                            ]
                        },
                        "local_account_disabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "root.AKS.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AKS.cluster_name"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "references": [
                                        "var.aks_dns_service_ip"
                                    ]
                                },
                                "load_balancer_sku": {
                                    "constant_value": "standard"
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "outbound_type": {
                                    "constant_value": "userAssignedNATGateway"
                                },
                                "service_cidr": {
                                    "references": [
                                        "var.aks_service_cidr"
                                    ]
                                }
                            }
                        ],
                        "node_resource_group": {
                            "references": [
                                "root.AKS.cluster_name"
                            ]
                        },
                        "oms_agent": [
                            {
                                "log_analytics_workspace_id": {
                                    "references": [
                                        "module.LogAnalytics.la_workspace_id",
                                        "module.LogAnalytics"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "k8s",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "module.AKS.azurerm_role_assignment.node_infrastructure_update_scale_set",
                    "depends_on": [
                        "module.AKS.azurerm_kubernetes_cluster.k8s"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.AKS.azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id",
                                "module.AKS.azurerm_kubernetes_cluster.k8s.kubelet_identity[0]",
                                "module.AKS.azurerm_kubernetes_cluster.k8s.kubelet_identity",
                                "module.AKS.azurerm_kubernetes_cluster.k8s"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Virtual Machine Contributor"
                        },
                        "scope": {
                            "references": [
                                "module.AKS.data.azurerm_resource_group.node_resource_group.id",
                                "module.AKS.data.azurerm_resource_group.node_resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "node_infrastructure_update_scale_set",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.AKS.data.azurerm_resource_group.node_resource_group",
                    "depends_on": [
                        "module.AKS.azurerm_kubernetes_cluster.k8s"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "module.AKS.azurerm_kubernetes_cluster.k8s.node_resource_group",
                                "module.AKS.azurerm_kubernetes_cluster.k8s"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "node_resource_group",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.AppGateway.azurerm_application_gateway.network",
                    "depends_on": [
                        "module.AppGateway.azurerm_public_ip.AppGW_PIP",
                        "module.AppGateway.azurerm_subnet.AppGW_Subnet"
                    ],
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
                                        "module.AppGateway.azurerm_public_ip.AppGW_PIP.id",
                                        "module.AppGateway.azurerm_public_ip.AppGW_PIP"
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
                                    "constant_value": "my-gateway-ip-configuration"
                                },
                                "subnet_id": {
                                    "references": [
                                        "module.AppGateway.azurerm_subnet.AppGW_Subnet.id",
                                        "module.AppGateway.azurerm_subnet.AppGW_Subnet"
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
                                "root.AppGateway.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AppGateway.appgw_name"
                            ]
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
                                    "constant_value": 9
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
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
                        ]
                    },
                    "mode": "managed",
                    "name": "network",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "module.AppGateway.azurerm_public_ip.AppGW_PIP",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "root.AppGateway.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AppGateway.public_ip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "AppGW_PIP",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.AppGateway.azurerm_subnet.AKS_Subnet",
                    "depends_on": [
                        "module.AppGateway.azurerm_virtual_network.AKS_VNet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "root.AppGateway.aks_subnet_pool"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AppGateway.aks_subnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "root.AppGateway.virtual_network_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "AKS_Subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "module.AppGateway.azurerm_subnet.AppGW_Subnet",
                    "depends_on": [
                        "module.AppGateway.azurerm_virtual_network.AKS_VNet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "root.AppGateway.appgw_subnet_pool"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AppGateway.appgw_subnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "root.AppGateway.virtual_network_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "AppGW_Subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "module.AppGateway.azurerm_subnet_nat_gateway_association.example",
                    "expressions": {
                        "nat_gateway_id": {
                            "references": [
                                "module.NATGateway.nat_gateway_id",
                                "module.NATGateway"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.AppGateway.azurerm_subnet.AKS_Subnet.id",
                                "module.AppGateway.azurerm_subnet.AKS_Subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_nat_gateway_association"
                },
                {
                    "address": "module.AppGateway.azurerm_virtual_network.AKS_VNet",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "root.AppGateway.vnet_address_pool"
                            ]
                        },
                        "location": {
                            "references": [
                                "root.AppGateway.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AppGateway.virtual_network_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "AKS_VNet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "module.KeyVault.azurerm_key_vault.key_vault",
                    "expressions": {
                        "enable_rbac_authorization": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "root.KeyVault.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.KeyVault.key_vault_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
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
                                "module.ServicePrincipal.service_principal_tenant_id",
                                "module.ServicePrincipal"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "key_vault",
                    "provider_config_key": "module.KeyVault:azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "module.KeyVault.data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "module.KeyVault:azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "module.LogAnalytics.azurerm_log_analytics_solution.Log_Analytics_Solution_ContainerInsights",
                    "expressions": {
                        "location": {
                            "references": [
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.location",
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
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
                                "var.rgname"
                            ]
                        },
                        "solution_name": {
                            "constant_value": "ContainerInsights"
                        },
                        "workspace_name": {
                            "references": [
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.name",
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
                            ]
                        },
                        "workspace_resource_id": {
                            "references": [
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace.id",
                                "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "Log_Analytics_Solution_ContainerInsights",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_log_analytics_solution"
                },
                {
                    "address": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace",
                    "expressions": {
                        "location": {
                            "references": [
                                "root.LogAnalytics.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.LogAnalytics.la_workspace_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "sku": {
                            "constant_value": "PerGB2018"
                        }
                    },
                    "mode": "managed",
                    "name": "Log_Analytics_WorkSpace",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.NATGateway.azurerm_nat_gateway.nat",
                    "expressions": {
                        "location": {
                            "references": [
                                "root.NATGateway.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.NATGateway.nat_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "nat",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_nat_gateway"
                },
                {
                    "address": "module.NATGateway.azurerm_nat_gateway_public_ip_association.nat_pip_assoc",
                    "expressions": {
                        "nat_gateway_id": {
                            "references": [
                                "module.NATGateway.azurerm_nat_gateway.nat.id",
                                "module.NATGateway.azurerm_nat_gateway.nat"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.NATGateway.azurerm_public_ip.nat_pip.id",
                                "module.NATGateway.azurerm_public_ip.nat_pip"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nat_pip_assoc",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_nat_gateway_public_ip_association"
                },
                {
                    "address": "module.NATGateway.azurerm_public_ip.nat_pip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "root.NATGateway.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.nat_pip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rgname"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "nat_pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.ServicePrincipal.azuread_application.spn_app",
                    "expressions": {
                        "display_name": {
                            "references": [
                                "root.ServicePrincipal.service_principal_name"
                            ]
                        },
                        "owners": {
                            "references": [
                                "module.ServicePrincipal.data.azuread_client_config.current.object_id",
                                "module.ServicePrincipal.data.azuread_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "spn_app",
                    "provider_config_key": "azuread",
                    "schema_version": 2,
                    "type": "azuread_application"
                },
                {
                    "address": "module.ServicePrincipal.azuread_service_principal.spn",
                    "expressions": {
                        "app_role_assignment_required": {
                            "constant_value": true
                        },
                        "client_id": {
                            "references": [
                                "module.ServicePrincipal.azuread_application.spn_app.client_id",
                                "module.ServicePrincipal.azuread_application.spn_app"
                            ]
                        },
                        "owners": {
                            "references": [
                                "module.ServicePrincipal.data.azuread_client_config.current.object_id",
                                "module.ServicePrincipal.data.azuread_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "spn",
                    "provider_config_key": "azuread",
                    "schema_version": 0,
                    "type": "azuread_service_principal"
                },
                {
                    "address": "module.ServicePrincipal.azuread_service_principal_password.spn_pass",
                    "expressions": {
                        "service_principal_id": {
                            "references": [
                                "module.ServicePrincipal.azuread_service_principal.spn.object_id",
                                "module.ServicePrincipal.azuread_service_principal.spn"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "spn_pass",
                    "provider_config_key": "azuread",
                    "schema_version": 1,
                    "type": "azuread_service_principal_password"
                },
                {
                    "address": "module.ServicePrincipal.data.azuread_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azuread",
                    "schema_version": 0,
                    "type": "azuread_client_config"
                }
            ],
            "variables": {
                "admin_group_name": {
                    "description": "Azure AD group to hold AKS deployment admins"
                },
                "aks_dns_service_ip": {},
                "aks_service_cidr": {},
                "aks_subnet_name": {},
                "aks_subnet_pool": {},
                "appgw_name": {},
                "appgw_subnet_name": {},
                "appgw_subnet_pool": {},
                "cluster_name": {},
                "dev_aks_admin_group_id": {},
                "dev_azure_subscription": {},
                "key_vault_name": {},
                "kubernetes_version": {},
                "la_workspace_name": {},
                "location": {
                    "default": "West US 2"
                },
                "nat_name": {},
                "nat_pip_name": {},
                "node_count": {},
                "prod_aks_admin_group_id": {},
                "prod_azure_subscription": {},
                "public_ip_name": {},
                "rgname": {
                    "description": "resource group name"
                },
                "service_principal_name": {},
                "virtual_network_name": {},
                "vm_size": {},
                "vnet_address_pool": {}
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.AKS",
                    "resources": [
                        {
                            "address": "module.AKS.azurerm_kubernetes_cluster.k8s",
                            "mode": "managed",
                            "name": "k8s",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "aci_connector_linux": [],
                                "api_server_access_profile": [],
                                "api_server_authorized_ip_ranges": [],
                                "auto_scaler_profile": [],
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "admin_group_object_ids": [],
                                        "server_app_secret": true
                                    }
                                ],
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
                                "oms_agent": [
                                    {
                                        "oms_agent_identity": []
                                    }
                                ],
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
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "azure_rbac_enabled": true,
                                        "client_app_id": null,
                                        "managed": true,
                                        "server_app_id": null,
                                        "server_app_secret": null
                                    }
                                ],
                                "azure_policy_enabled": null,
                                "confidential_computing": [],
                                "cost_analysis_enabled": null,
                                "custom_ca_trust_certificates_base64": null,
                                "default_node_pool": [
                                    {
                                        "capacity_reservation_group_id": null,
                                        "custom_ca_trust_enabled": null,
                                        "enable_auto_scaling": true,
                                        "enable_host_encryption": null,
                                        "enable_node_public_ip": null,
                                        "fips_enabled": null,
                                        "gpu_instance": null,
                                        "host_group_id": null,
                                        "kubelet_config": [],
                                        "linux_os_config": [],
                                        "max_count": 5,
                                        "message_of_the_day": null,
                                        "min_count": 4,
                                        "name": "agentpool",
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
                                        "orchestrator_version": "1.29",
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
                                        "vm_size": "Standard_A2_v2",
                                        "zones": null
                                    }
                                ],
                                "disk_encryption_set_id": null,
                                "dns_prefix": "test-aks-clusterdns",
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
                                        "gateway_name": null,
                                        "subnet_cidr": null,
                                        "subnet_id": null
                                    }
                                ],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [],
                                "kubernetes_version": "1.29",
                                "linux_profile": [],
                                "local_account_disabled": true,
                                "location": "westus2",
                                "maintenance_window": [],
                                "maintenance_window_auto_upgrade": [],
                                "maintenance_window_node_os": [],
                                "microsoft_defender": [],
                                "monitor_metrics": [],
                                "name": "test-aks-clusteraks",
                                "network_profile": [
                                    {
                                        "dns_service_ip": "10.240.0.53",
                                        "load_balancer_sku": "standard",
                                        "network_plugin": "azure",
                                        "network_plugin_mode": null,
                                        "outbound_type": "userAssignedNATGateway",
                                        "service_cidr": "10.240.0.0/12"
                                    }
                                ],
                                "node_os_channel_upgrade": null,
                                "node_resource_group": "test-aks-cluster-node-rg",
                                "oidc_issuer_enabled": null,
                                "oms_agent": [
                                    {
                                        "msi_auth_for_monitoring_enabled": null
                                    }
                                ],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "AKS_Deployment_RG",
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
                            "address": "module.AKS.azurerm_role_assignment.node_infrastructure_update_scale_set",
                            "mode": "managed",
                            "name": "node_infrastructure_update_scale_set",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_role_assignment",
                            "values": {
                                "condition": null,
                                "condition_version": null,
                                "delegated_managed_identity_resource_id": null,
                                "description": null,
                                "role_definition_name": "Virtual Machine Contributor",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.AKS.data.azurerm_resource_group.node_resource_group",
                            "mode": "data",
                            "name": "node_resource_group",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "tags": {}
                            },
                            "type": "azurerm_resource_group",
                            "values": {
                                "name": "test-aks-cluster-node-rg",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.AppGateway",
                    "resources": [
                        {
                            "address": "module.AppGateway.azurerm_application_gateway.network",
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
                                        "name": "AKS_VNet-beap"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "AKS_VNet-be-htst",
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
                                        "name": "AKS_VNet-feip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "AKS_VNet-feport",
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
                                        "frontend_ip_configuration_name": "AKS_VNet-feip",
                                        "frontend_port_name": "AKS_VNet-feport",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "AKS_VNet-httplstn",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "westus2",
                                "name": "AKS_AppGW",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "AKS_VNet-beap",
                                        "backend_http_settings_name": "AKS_VNet-be-htst",
                                        "http_listener_name": "AKS_VNet-httplstn",
                                        "name": "AKS_VNet-rqrt",
                                        "priority": 9,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "AKS_Deployment_RG",
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
                            "address": "module.AppGateway.azurerm_public_ip.AppGW_PIP",
                            "mode": "managed",
                            "name": "AppGW_PIP",
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
                                "location": "westus2",
                                "name": "AppGW_PIP",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "AKS_Deployment_RG",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.AppGateway.azurerm_subnet.AKS_Subnet",
                            "mode": "managed",
                            "name": "AKS_Subnet",
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
                                    "10.10.1.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "AKS_Subnet",
                                "resource_group_name": "AKS_Deployment_RG",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "AKS_VNet"
                            }
                        },
                        {
                            "address": "module.AppGateway.azurerm_subnet.AppGW_Subnet",
                            "mode": "managed",
                            "name": "AppGW_Subnet",
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
                                    "10.10.254.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "AppGW_Subnet",
                                "resource_group_name": "AKS_Deployment_RG",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "AKS_VNet"
                            }
                        },
                        {
                            "address": "module.AppGateway.azurerm_subnet_nat_gateway_association.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_subnet_nat_gateway_association",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.AppGateway.azurerm_virtual_network.AKS_VNet",
                            "mode": "managed",
                            "name": "AKS_VNet",
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
                                    "10.10.0.0/16"
                                ],
                                "bgp_community": null,
                                "ddos_protection_plan": [],
                                "edge_zone": null,
                                "encryption": [],
                                "flow_timeout_in_minutes": null,
                                "location": "westus2",
                                "name": "AKS_VNet",
                                "resource_group_name": "AKS_Deployment_RG",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.KeyVault",
                    "resources": [
                        {
                            "address": "module.KeyVault.azurerm_key_vault.key_vault",
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
                                "enable_rbac_authorization": true,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": null,
                                "enabled_for_template_deployment": null,
                                "location": "westus2",
                                "name": "AKS-Key-Vault-ykal",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": null,
                                "resource_group_name": "AKS_Deployment_RG",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.LogAnalytics",
                    "resources": [
                        {
                            "address": "module.LogAnalytics.azurerm_log_analytics_solution.Log_Analytics_Solution_ContainerInsights",
                            "mode": "managed",
                            "name": "Log_Analytics_Solution_ContainerInsights",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "plan": [
                                    {}
                                ]
                            },
                            "type": "azurerm_log_analytics_solution",
                            "values": {
                                "location": "westus2",
                                "plan": [
                                    {
                                        "product": "OMSGallery/ContainerInsights",
                                        "promotion_code": null,
                                        "publisher": "Microsoft"
                                    }
                                ],
                                "resource_group_name": "AKS_Deployment_RG",
                                "solution_name": "ContainerInsights",
                                "tags": null,
                                "timeouts": null,
                                "workspace_name": "aks-loganalytics-ykal"
                            }
                        },
                        {
                            "address": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace",
                            "mode": "managed",
                            "name": "Log_Analytics_WorkSpace",
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
                                "location": "westus2",
                                "name": "aks-loganalytics-ykal",
                                "reservation_capacity_in_gb_per_day": null,
                                "resource_group_name": "AKS_Deployment_RG",
                                "sku": "PerGB2018",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.NATGateway",
                    "resources": [
                        {
                            "address": "module.NATGateway.azurerm_nat_gateway.nat",
                            "mode": "managed",
                            "name": "nat",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_nat_gateway",
                            "values": {
                                "idle_timeout_in_minutes": 4,
                                "location": "westus2",
                                "name": "aks_natgw",
                                "resource_group_name": "AKS_Deployment_RG",
                                "sku_name": "Standard",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.NATGateway.azurerm_nat_gateway_public_ip_association.nat_pip_assoc",
                            "mode": "managed",
                            "name": "nat_pip_assoc",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_nat_gateway_public_ip_association",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.NATGateway.azurerm_public_ip.nat_pip",
                            "mode": "managed",
                            "name": "nat_pip",
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
                                "location": "westus2",
                                "name": "aks_natgw_pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "AKS_Deployment_RG",
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
                    "address": "module.ServicePrincipal",
                    "resources": [
                        {
                            "address": "module.ServicePrincipal.azuread_application.spn_app",
                            "mode": "managed",
                            "name": "spn_app",
                            "provider_name": "registry.terraform.io/hashicorp/azuread",
                            "schema_version": 2,
                            "sensitive_values": {
                                "api": [],
                                "app_role": [],
                                "app_role_ids": {},
                                "feature_tags": [],
                                "oauth2_permission_scope_ids": {},
                                "optional_claims": [],
                                "owners": [],
                                "password": [],
                                "public_client": [],
                                "required_resource_access": [],
                                "single_page_application": [],
                                "tags": [],
                                "web": []
                            },
                            "type": "azuread_application",
                            "values": {
                                "api": [],
                                "app_role": [],
                                "description": null,
                                "device_only_auth_enabled": null,
                                "display_name": "AKS_Deployment_SPN",
                                "fallback_public_client_enabled": null,
                                "group_membership_claims": null,
                                "identifier_uris": null,
                                "logo_image": null,
                                "marketing_url": null,
                                "notes": null,
                                "oauth2_post_response_required": null,
                                "optional_claims": [],
                                "prevent_duplicate_names": false,
                                "privacy_statement_url": null,
                                "public_client": [],
                                "required_resource_access": [],
                                "service_management_reference": null,
                                "sign_in_audience": "AzureADMyOrg",
                                "single_page_application": [],
                                "support_url": null,
                                "terms_of_service_url": null,
                                "timeouts": null,
                                "web": []
                            }
                        },
                        {
                            "address": "module.ServicePrincipal.azuread_service_principal.spn",
                            "mode": "managed",
                            "name": "spn",
                            "provider_name": "registry.terraform.io/hashicorp/azuread",
                            "schema_version": 0,
                            "sensitive_values": {
                                "app_role_ids": {},
                                "app_roles": [],
                                "feature_tags": [],
                                "features": [],
                                "oauth2_permission_scope_ids": {},
                                "oauth2_permission_scopes": [],
                                "owners": [],
                                "redirect_uris": [],
                                "saml_single_sign_on": [],
                                "service_principal_names": [],
                                "tags": []
                            },
                            "type": "azuread_service_principal",
                            "values": {
                                "account_enabled": true,
                                "alternative_names": null,
                                "app_role_assignment_required": true,
                                "description": null,
                                "login_url": null,
                                "notes": null,
                                "notification_email_addresses": null,
                                "preferred_single_sign_on_mode": null,
                                "saml_single_sign_on": [],
                                "timeouts": null,
                                "use_existing": null
                            }
                        },
                        {
                            "address": "module.ServicePrincipal.azuread_service_principal_password.spn_pass",
                            "mode": "managed",
                            "name": "spn_pass",
                            "provider_name": "registry.terraform.io/hashicorp/azuread",
                            "schema_version": 1,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azuread_service_principal_password",
                            "values": {
                                "end_date_relative": null,
                                "rotate_when_changed": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.ServicePrincipal.data.azuread_client_config.current",
                            "mode": "data",
                            "name": "current",
                            "provider_name": "registry.terraform.io/hashicorp/azuread",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azuread_client_config",
                            "values": {
                                "timeouts": null
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azuread_group.admin_group",
                    "mode": "managed",
                    "name": "admin_group",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 0,
                    "sensitive_values": {
                        "dynamic_membership": [],
                        "members": [],
                        "owners": [
                            false
                        ],
                        "proxy_addresses": []
                    },
                    "type": "azuread_group",
                    "values": {
                        "administrative_unit_ids": null,
                        "assignable_to_role": null,
                        "behaviors": null,
                        "description": null,
                        "display_name": "AKS_Admins",
                        "dynamic_membership": [],
                        "mail_enabled": null,
                        "owners": [
                            "49b998a7-aa04-4db3-aaa7-426d9e2bfa92"
                        ],
                        "prevent_duplicate_names": false,
                        "provisioning_options": null,
                        "security_enabled": true,
                        "theme": null,
                        "timeouts": null,
                        "types": null,
                        "writeback_enabled": false
                    }
                },
                {
                    "address": "azurerm_key_vault_secret.key_vault_secret",
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
                        "not_before_date": null,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_resource_group.rg1",
                    "mode": "managed",
                    "name": "rg1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westus2",
                        "managed_by": null,
                        "name": "AKS_Deployment_RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.appgw_agic_role",
                    "mode": "managed",
                    "name": "appgw_agic_role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.resourcegroup_agic_role",
                    "mode": "managed",
                    "name": "resourcegroup_agic_role",
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
                    "address": "azurerm_role_assignment.rolekv_group",
                    "mode": "managed",
                    "name": "rolekv_group",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Administrator",
                        "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.rolekv_spn",
                    "mode": "managed",
                    "name": "rolekv_spn",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Administrator",
                        "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.rolekv_user",
                    "mode": "managed",
                    "name": "rolekv_user",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "principal_id": "49b998a7-aa04-4db3-aaa7-426d9e2bfa92",
                        "role_definition_name": "Key Vault Administrator",
                        "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.rolespn",
                    "mode": "managed",
                    "name": "rolespn",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.vnet_agic_role",
                    "mode": "managed",
                    "name": "vnet_agic_role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.vnet_k8s_role",
                    "mode": "managed",
                    "name": "vnet_k8s_role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.AKS.azurerm_kubernetes_cluster.k8s",
                    "mode": "managed",
                    "name": "k8s",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "aci_connector_linux": [],
                        "api_server_access_profile": [],
                        "api_server_authorized_ip_ranges": [],
                        "auto_scaler_profile": [],
                        "azure_active_directory_role_based_access_control": [
                            {
                                "admin_group_object_ids": [],
                                "server_app_secret": true
                            }
                        ],
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
                        "oms_agent": [
                            {
                                "oms_agent_identity": []
                            }
                        ],
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
                        "azure_active_directory_role_based_access_control": [
                            {
                                "azure_rbac_enabled": true,
                                "client_app_id": null,
                                "managed": true,
                                "server_app_id": null,
                                "server_app_secret": null
                            }
                        ],
                        "azure_policy_enabled": null,
                        "confidential_computing": [],
                        "cost_analysis_enabled": null,
                        "custom_ca_trust_certificates_base64": null,
                        "default_node_pool": [
                            {
                                "capacity_reservation_group_id": null,
                                "custom_ca_trust_enabled": null,
                                "enable_auto_scaling": true,
                                "enable_host_encryption": null,
                                "enable_node_public_ip": null,
                                "fips_enabled": null,
                                "gpu_instance": null,
                                "host_group_id": null,
                                "kubelet_config": [],
                                "linux_os_config": [],
                                "max_count": 5,
                                "message_of_the_day": null,
                                "min_count": 4,
                                "name": "agentpool",
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "orchestrator_version": "1.29",
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
                                "vm_size": "Standard_A2_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "test-aks-clusterdns",
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
                                "gateway_name": null,
                                "subnet_cidr": null,
                                "subnet_id": null
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kubernetes_version": "1.29",
                        "linux_profile": [],
                        "local_account_disabled": true,
                        "location": "westus2",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "test-aks-clusteraks",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.240.0.53",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "userAssignedNATGateway",
                                "service_cidr": "10.240.0.0/12"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "node_resource_group": "test-aks-cluster-node-rg",
                        "oidc_issuer_enabled": null,
                        "oms_agent": [
                            {
                                "msi_auth_for_monitoring_enabled": null
                            }
                        ],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "AKS_Deployment_RG",
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
                    "address": "module.AKS.azurerm_role_assignment.node_infrastructure_update_scale_set",
                    "mode": "managed",
                    "name": "node_infrastructure_update_scale_set",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Virtual Machine Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.AKS.data.azurerm_resource_group.node_resource_group",
                    "mode": "data",
                    "name": "node_resource_group",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "name": "test-aks-cluster-node-rg",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.AppGateway.azurerm_application_gateway.network",
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
                                "name": "AKS_VNet-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "AKS_VNet-be-htst",
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
                                "name": "AKS_VNet-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "AKS_VNet-feport",
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
                                "frontend_ip_configuration_name": "AKS_VNet-feip",
                                "frontend_port_name": "AKS_VNet-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "AKS_VNet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus2",
                        "name": "AKS_AppGW",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "AKS_VNet-beap",
                                "backend_http_settings_name": "AKS_VNet-be-htst",
                                "http_listener_name": "AKS_VNet-httplstn",
                                "name": "AKS_VNet-rqrt",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "AKS_Deployment_RG",
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
                    "address": "module.AppGateway.azurerm_public_ip.AppGW_PIP",
                    "mode": "managed",
                    "name": "AppGW_PIP",
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
                        "location": "westus2",
                        "name": "AppGW_PIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "AKS_Deployment_RG",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.AppGateway.azurerm_subnet.AKS_Subnet",
                    "mode": "managed",
                    "name": "AKS_Subnet",
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
                            "10.10.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AKS_Subnet",
                        "resource_group_name": "AKS_Deployment_RG",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "AKS_VNet"
                    }
                },
                {
                    "address": "module.AppGateway.azurerm_subnet.AppGW_Subnet",
                    "mode": "managed",
                    "name": "AppGW_Subnet",
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
                            "10.10.254.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AppGW_Subnet",
                        "resource_group_name": "AKS_Deployment_RG",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "AKS_VNet"
                    }
                },
                {
                    "address": "module.AppGateway.azurerm_subnet_nat_gateway_association.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_nat_gateway_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.AppGateway.azurerm_virtual_network.AKS_VNet",
                    "mode": "managed",
                    "name": "AKS_VNet",
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
                            "10.10.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westus2",
                        "name": "AKS_VNet",
                        "resource_group_name": "AKS_Deployment_RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.KeyVault.azurerm_key_vault.key_vault",
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
                        "enable_rbac_authorization": true,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "westus2",
                        "name": "AKS-Key-Vault-ykal",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": null,
                        "resource_group_name": "AKS_Deployment_RG",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.LogAnalytics.azurerm_log_analytics_solution.Log_Analytics_Solution_ContainerInsights",
                    "mode": "managed",
                    "name": "Log_Analytics_Solution_ContainerInsights",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "plan": [
                            {}
                        ]
                    },
                    "type": "azurerm_log_analytics_solution",
                    "values": {
                        "location": "westus2",
                        "plan": [
                            {
                                "product": "OMSGallery/ContainerInsights",
                                "promotion_code": null,
                                "publisher": "Microsoft"
                            }
                        ],
                        "resource_group_name": "AKS_Deployment_RG",
                        "solution_name": "ContainerInsights",
                        "tags": null,
                        "timeouts": null,
                        "workspace_name": "aks-loganalytics-ykal"
                    }
                },
                {
                    "address": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace",
                    "mode": "managed",
                    "name": "Log_Analytics_WorkSpace",
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
                        "location": "westus2",
                        "name": "aks-loganalytics-ykal",
                        "reservation_capacity_in_gb_per_day": null,
                        "resource_group_name": "AKS_Deployment_RG",
                        "sku": "PerGB2018",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.NATGateway.azurerm_nat_gateway.nat",
                    "mode": "managed",
                    "name": "nat",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_nat_gateway",
                    "values": {
                        "idle_timeout_in_minutes": 4,
                        "location": "westus2",
                        "name": "aks_natgw",
                        "resource_group_name": "AKS_Deployment_RG",
                        "sku_name": "Standard",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.NATGateway.azurerm_nat_gateway_public_ip_association.nat_pip_assoc",
                    "mode": "managed",
                    "name": "nat_pip_assoc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_nat_gateway_public_ip_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.NATGateway.azurerm_public_ip.nat_pip",
                    "mode": "managed",
                    "name": "nat_pip",
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
                        "location": "westus2",
                        "name": "aks_natgw_pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "AKS_Deployment_RG",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.ServicePrincipal.azuread_application.spn_app",
                    "mode": "managed",
                    "name": "spn_app",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 2,
                    "sensitive_values": {
                        "api": [],
                        "app_role": [],
                        "app_role_ids": {},
                        "feature_tags": [],
                        "oauth2_permission_scope_ids": {},
                        "optional_claims": [],
                        "owners": [],
                        "password": [],
                        "public_client": [],
                        "required_resource_access": [],
                        "single_page_application": [],
                        "tags": [],
                        "web": []
                    },
                    "type": "azuread_application",
                    "values": {
                        "api": [],
                        "app_role": [],
                        "description": null,
                        "device_only_auth_enabled": null,
                        "display_name": "AKS_Deployment_SPN",
                        "fallback_public_client_enabled": null,
                        "group_membership_claims": null,
                        "identifier_uris": null,
                        "logo_image": null,
                        "marketing_url": null,
                        "notes": null,
                        "oauth2_post_response_required": null,
                        "optional_claims": [],
                        "prevent_duplicate_names": false,
                        "privacy_statement_url": null,
                        "public_client": [],
                        "required_resource_access": [],
                        "service_management_reference": null,
                        "sign_in_audience": "AzureADMyOrg",
                        "single_page_application": [],
                        "support_url": null,
                        "terms_of_service_url": null,
                        "timeouts": null,
                        "web": []
                    }
                },
                {
                    "address": "module.ServicePrincipal.azuread_service_principal.spn",
                    "mode": "managed",
                    "name": "spn",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 0,
                    "sensitive_values": {
                        "app_role_ids": {},
                        "app_roles": [],
                        "feature_tags": [],
                        "features": [],
                        "oauth2_permission_scope_ids": {},
                        "oauth2_permission_scopes": [],
                        "owners": [],
                        "redirect_uris": [],
                        "saml_single_sign_on": [],
                        "service_principal_names": [],
                        "tags": []
                    },
                    "type": "azuread_service_principal",
                    "values": {
                        "account_enabled": true,
                        "alternative_names": null,
                        "app_role_assignment_required": true,
                        "description": null,
                        "login_url": null,
                        "notes": null,
                        "notification_email_addresses": null,
                        "preferred_single_sign_on_mode": null,
                        "saml_single_sign_on": [],
                        "timeouts": null,
                        "use_existing": null
                    }
                },
                {
                    "address": "module.ServicePrincipal.azuread_service_principal_password.spn_pass",
                    "mode": "managed",
                    "name": "spn_pass",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 1,
                    "sensitive_values": {
                        "value": true
                    },
                    "type": "azuread_service_principal_password",
                    "values": {
                        "end_date_relative": null,
                        "rotate_when_changed": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.ServicePrincipal.data.azuread_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azuread_client_config",
                    "values": {
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
            "root_module": {
                "child_modules": [
                    {
                        "address": "module.KeyVault",
                        "resources": [
                            {
                                "address": "module.KeyVault.data.azurerm_client_config.current",
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
                "id"
            ],
            "resource": "module.NATGateway.azurerm_nat_gateway.nat"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AppGateway.azurerm_subnet.AppGW_Subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AppGateway.azurerm_public_ip.AppGW_PIP"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.AppGateway.azurerm_public_ip.AppGW_PIP"
        },
        {
            "attribute": [
                "application_tenant_id"
            ],
            "resource": "module.ServicePrincipal.azuread_service_principal.spn"
        },
        {
            "attribute": [
                "value"
            ],
            "resource": "module.ServicePrincipal.azuread_service_principal_password.spn_pass"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AppGateway.azurerm_application_gateway.network"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_resource_group.rg1"
        },
        {
            "attribute": [
                "application_id"
            ],
            "resource": "module.ServicePrincipal.azuread_service_principal.spn"
        },
        {
            "attribute": [
                "display_name"
            ],
            "resource": "module.ServicePrincipal.azuread_service_principal.spn"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.AppGateway.azurerm_virtual_network.AKS_VNet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AppGateway.azurerm_subnet.AKS_Subnet"
        },
        {
            "attribute": [
                "kubelet_identity",
                0,
                "object_id"
            ],
            "resource": "module.AKS.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.KeyVault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0,
                "ingress_application_gateway_identity",
                0,
                "object_id"
            ],
            "resource": "module.AKS.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.NATGateway.azurerm_public_ip.nat_pip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azuread_group.admin_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "module.ServicePrincipal.data.azuread_client_config.current"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "module.ServicePrincipal.azuread_application.spn_app"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "module.ServicePrincipal.azuread_service_principal.spn"
        },
        {
            "attribute": [
                "node_resource_group"
            ],
            "resource": "module.AKS.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AKS.data.azurerm_resource_group.node_resource_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AppGateway.azurerm_virtual_network.AKS_VNet"
        },
        {
            "attribute": [
                "identity",
                0,
                "principal_id"
            ],
            "resource": "module.AKS.azurerm_kubernetes_cluster.k8s"
        }
    ],
    "resource_changes": [
        {
            "address": "azuread_group.admin_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrative_unit_ids": null,
                    "assignable_to_role": null,
                    "behaviors": null,
                    "description": null,
                    "display_name": "AKS_Admins",
                    "dynamic_membership": [],
                    "mail_enabled": null,
                    "owners": [
                        "49b998a7-aa04-4db3-aaa7-426d9e2bfa92"
                    ],
                    "prevent_duplicate_names": false,
                    "provisioning_options": null,
                    "security_enabled": true,
                    "theme": null,
                    "timeouts": null,
                    "types": null,
                    "writeback_enabled": false
                },
                "after_sensitive": {
                    "dynamic_membership": [],
                    "members": [],
                    "owners": [
                        false
                    ],
                    "proxy_addresses": []
                },
                "after_unknown": {
                    "auto_subscribe_new_members": true,
                    "dynamic_membership": [],
                    "external_senders_allowed": true,
                    "hide_from_address_lists": true,
                    "hide_from_outlook_clients": true,
                    "id": true,
                    "mail": true,
                    "mail_nickname": true,
                    "members": true,
                    "object_id": true,
                    "onpremises_domain_name": true,
                    "onpremises_group_type": true,
                    "onpremises_netbios_name": true,
                    "onpremises_sam_account_name": true,
                    "onpremises_security_identifier": true,
                    "onpremises_sync_enabled": true,
                    "owners": [
                        false
                    ],
                    "preferred_language": true,
                    "proxy_addresses": true,
                    "visibility": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "admin_group",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_group"
        },
        {
            "address": "azurerm_key_vault_secret.key_vault_secret",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "name": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "value": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "azurerm_resource_group.rg1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "managed_by": null,
                    "name": "AKS_Deployment_RG",
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
            "name": "rg1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.appgw_agic_role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
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
            "mode": "managed",
            "name": "appgw_agic_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.resourcegroup_agic_role",
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
            "mode": "managed",
            "name": "resourcegroup_agic_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.rolekv_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Administrator",
                    "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "rolekv_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.rolekv_spn",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Administrator",
                    "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "rolekv_spn",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.rolekv_user",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "principal_id": "49b998a7-aa04-4db3-aaa7-426d9e2bfa92",
                    "role_definition_name": "Key Vault Administrator",
                    "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111/resourceGroups/AKS_Deployment_RG/providers/Microsoft.KeyVault/vaults/AKS-Key-Vault-ykal",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "rolekv_user",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.rolespn",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
                    "scope": "/subscriptions/b38e5d20-9ac1-43eb-8531-c1d425068111",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "rolespn",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.vnet_agic_role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
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
            "mode": "managed",
            "name": "vnet_agic_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.vnet_k8s_role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
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
            "mode": "managed",
            "name": "vnet_k8s_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "action_reason": "read_because_dependency_pending",
            "address": "module.AKS.data.azurerm_resource_group.node_resource_group",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "name": "test-aks-cluster-node-rg",
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.AKS",
            "name": "node_resource_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.AKS.azurerm_kubernetes_cluster.k8s",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "aci_connector_linux": [],
                    "automatic_channel_upgrade": null,
                    "azure_active_directory_role_based_access_control": [
                        {
                            "azure_rbac_enabled": true,
                            "client_app_id": null,
                            "managed": true,
                            "server_app_id": null,
                            "server_app_secret": null
                        }
                    ],
                    "azure_policy_enabled": null,
                    "confidential_computing": [],
                    "cost_analysis_enabled": null,
                    "custom_ca_trust_certificates_base64": null,
                    "default_node_pool": [
                        {
                            "capacity_reservation_group_id": null,
                            "custom_ca_trust_enabled": null,
                            "enable_auto_scaling": true,
                            "enable_host_encryption": null,
                            "enable_node_public_ip": null,
                            "fips_enabled": null,
                            "gpu_instance": null,
                            "host_group_id": null,
                            "kubelet_config": [],
                            "linux_os_config": [],
                            "max_count": 5,
                            "message_of_the_day": null,
                            "min_count": 4,
                            "name": "agentpool",
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "orchestrator_version": "1.29",
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
                            "vm_size": "Standard_A2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "test-aks-clusterdns",
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
                            "gateway_name": null,
                            "subnet_cidr": null,
                            "subnet_id": null
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kubernetes_version": "1.29",
                    "linux_profile": [],
                    "local_account_disabled": true,
                    "location": "westus2",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "test-aks-clusteraks",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.240.0.53",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "userAssignedNATGateway",
                            "service_cidr": "10.240.0.0/12"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "node_resource_group": "test-aks-cluster-node-rg",
                    "oidc_issuer_enabled": null,
                    "oms_agent": [
                        {
                            "msi_auth_for_monitoring_enabled": null
                        }
                    ],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "AKS_Deployment_RG",
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
                    "azure_active_directory_role_based_access_control": [
                        {
                            "admin_group_object_ids": [],
                            "server_app_secret": true
                        }
                    ],
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
                    "oms_agent": [
                        {
                            "oms_agent_identity": []
                        }
                    ],
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
                            "admin_group_object_ids": true,
                            "tenant_id": true
                        }
                    ],
                    "confidential_computing": [],
                    "current_kubernetes_version": true,
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "kubelet_disk_type": true,
                            "linux_os_config": [],
                            "max_pods": true,
                            "node_count": true,
                            "node_labels": true,
                            "node_network_profile": [],
                            "os_disk_size_gb": true,
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
                    "ingress_application_gateway": [
                        {
                            "effective_gateway_id": true,
                            "gateway_id": true,
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
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
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
                            "service_cidrs": true
                        }
                    ],
                    "node_resource_group_id": true,
                    "oidc_issuer_url": true,
                    "oms_agent": [
                        {
                            "log_analytics_workspace_id": true,
                            "oms_agent_identity": true
                        }
                    ],
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
            "module_address": "module.AKS",
            "name": "k8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.AKS.azurerm_role_assignment.node_infrastructure_update_scale_set",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Virtual Machine Contributor",
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
            "mode": "managed",
            "module_address": "module.AKS",
            "name": "node_infrastructure_update_scale_set",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.AppGateway.azurerm_application_gateway.network",
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
                            "name": "AKS_VNet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "AKS_VNet-be-htst",
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
                            "name": "AKS_VNet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "AKS_VNet-feport",
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
                            "frontend_ip_configuration_name": "AKS_VNet-feip",
                            "frontend_port_name": "AKS_VNet-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "AKS_VNet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus2",
                    "name": "AKS_AppGW",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AKS_VNet-beap",
                            "backend_http_settings_name": "AKS_VNet-be-htst",
                            "http_listener_name": "AKS_VNet-httplstn",
                            "name": "AKS_VNet-rqrt",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "AKS_Deployment_RG",
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
            "module_address": "module.AppGateway",
            "name": "network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.AppGateway.azurerm_public_ip.AppGW_PIP",
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
                    "location": "westus2",
                    "name": "AppGW_PIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "AKS_Deployment_RG",
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
            "module_address": "module.AppGateway",
            "name": "AppGW_PIP",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.AppGateway.azurerm_subnet.AKS_Subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AKS_Subnet",
                    "resource_group_name": "AKS_Deployment_RG",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "AKS_VNet"
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
            "module_address": "module.AppGateway",
            "name": "AKS_Subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.AppGateway.azurerm_subnet.AppGW_Subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.254.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AppGW_Subnet",
                    "resource_group_name": "AKS_Deployment_RG",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "AKS_VNet"
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
            "module_address": "module.AppGateway",
            "name": "AppGW_Subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.AppGateway.azurerm_subnet_nat_gateway_association.example",
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
                    "nat_gateway_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.AppGateway",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_nat_gateway_association"
        },
        {
            "address": "module.AppGateway.azurerm_virtual_network.AKS_VNet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.10.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westus2",
                    "name": "AKS_VNet",
                    "resource_group_name": "AKS_Deployment_RG",
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
            "module_address": "module.AppGateway",
            "name": "AKS_VNet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.KeyVault.azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": true,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "westus2",
                    "name": "AKS-Key-Vault-ykal",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "AKS_Deployment_RG",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
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
                    "tenant_id": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.KeyVault",
            "name": "key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.LogAnalytics.azurerm_log_analytics_solution.Log_Analytics_Solution_ContainerInsights",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "plan": [
                        {
                            "product": "OMSGallery/ContainerInsights",
                            "promotion_code": null,
                            "publisher": "Microsoft"
                        }
                    ],
                    "resource_group_name": "AKS_Deployment_RG",
                    "solution_name": "ContainerInsights",
                    "tags": null,
                    "timeouts": null,
                    "workspace_name": "aks-loganalytics-ykal"
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
                    "workspace_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.LogAnalytics",
            "name": "Log_Analytics_Solution_ContainerInsights",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_solution"
        },
        {
            "address": "module.LogAnalytics.azurerm_log_analytics_workspace.Log_Analytics_WorkSpace",
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
                    "location": "westus2",
                    "name": "aks-loganalytics-ykal",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "AKS_Deployment_RG",
                    "sku": "PerGB2018",
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
                    "primary_shared_key": true,
                    "retention_in_days": true,
                    "secondary_shared_key": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.LogAnalytics",
            "name": "Log_Analytics_WorkSpace",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.NATGateway.azurerm_nat_gateway.nat",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "idle_timeout_in_minutes": 4,
                    "location": "westus2",
                    "name": "aks_natgw",
                    "resource_group_name": "AKS_Deployment_RG",
                    "sku_name": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_guid": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.NATGateway",
            "name": "nat",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_nat_gateway"
        },
        {
            "address": "module.NATGateway.azurerm_nat_gateway_public_ip_association.nat_pip_assoc",
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
                    "nat_gateway_id": true,
                    "public_ip_address_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.NATGateway",
            "name": "nat_pip_assoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_nat_gateway_public_ip_association"
        },
        {
            "address": "module.NATGateway.azurerm_public_ip.nat_pip",
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
                    "location": "westus2",
                    "name": "aks_natgw_pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "AKS_Deployment_RG",
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
            "module_address": "module.NATGateway",
            "name": "nat_pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "action_reason": "read_because_dependency_pending",
            "address": "module.ServicePrincipal.data.azuread_client_config.current",
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
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.ServicePrincipal",
            "name": "current",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_client_config"
        },
        {
            "address": "module.ServicePrincipal.azuread_application.spn_app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "api": [],
                    "app_role": [],
                    "description": null,
                    "device_only_auth_enabled": null,
                    "display_name": "AKS_Deployment_SPN",
                    "fallback_public_client_enabled": null,
                    "group_membership_claims": null,
                    "identifier_uris": null,
                    "logo_image": null,
                    "marketing_url": null,
                    "notes": null,
                    "oauth2_post_response_required": null,
                    "optional_claims": [],
                    "prevent_duplicate_names": false,
                    "privacy_statement_url": null,
                    "public_client": [],
                    "required_resource_access": [],
                    "service_management_reference": null,
                    "sign_in_audience": "AzureADMyOrg",
                    "single_page_application": [],
                    "support_url": null,
                    "terms_of_service_url": null,
                    "timeouts": null,
                    "web": []
                },
                "after_sensitive": {
                    "api": [],
                    "app_role": [],
                    "app_role_ids": {},
                    "feature_tags": [],
                    "oauth2_permission_scope_ids": {},
                    "optional_claims": [],
                    "owners": [],
                    "password": [],
                    "public_client": [],
                    "required_resource_access": [],
                    "single_page_application": [],
                    "tags": [],
                    "web": []
                },
                "after_unknown": {
                    "api": [],
                    "app_role": [],
                    "app_role_ids": true,
                    "application_id": true,
                    "client_id": true,
                    "disabled_by_microsoft": true,
                    "feature_tags": true,
                    "id": true,
                    "logo_url": true,
                    "oauth2_permission_scope_ids": true,
                    "object_id": true,
                    "optional_claims": [],
                    "owners": true,
                    "password": true,
                    "public_client": [],
                    "publisher_domain": true,
                    "required_resource_access": [],
                    "single_page_application": [],
                    "tags": true,
                    "template_id": true,
                    "web": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.ServicePrincipal",
            "name": "spn_app",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_application"
        },
        {
            "address": "module.ServicePrincipal.azuread_service_principal.spn",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_enabled": true,
                    "alternative_names": null,
                    "app_role_assignment_required": true,
                    "description": null,
                    "login_url": null,
                    "notes": null,
                    "notification_email_addresses": null,
                    "preferred_single_sign_on_mode": null,
                    "saml_single_sign_on": [],
                    "timeouts": null,
                    "use_existing": null
                },
                "after_sensitive": {
                    "app_role_ids": {},
                    "app_roles": [],
                    "feature_tags": [],
                    "features": [],
                    "oauth2_permission_scope_ids": {},
                    "oauth2_permission_scopes": [],
                    "owners": [],
                    "redirect_uris": [],
                    "saml_single_sign_on": [],
                    "service_principal_names": [],
                    "tags": []
                },
                "after_unknown": {
                    "app_role_ids": true,
                    "app_roles": true,
                    "application_id": true,
                    "application_tenant_id": true,
                    "client_id": true,
                    "display_name": true,
                    "feature_tags": true,
                    "features": true,
                    "homepage_url": true,
                    "id": true,
                    "logout_url": true,
                    "oauth2_permission_scope_ids": true,
                    "oauth2_permission_scopes": true,
                    "object_id": true,
                    "owners": true,
                    "redirect_uris": true,
                    "saml_metadata_url": true,
                    "saml_single_sign_on": [],
                    "service_principal_names": true,
                    "sign_in_audience": true,
                    "tags": true,
                    "type": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.ServicePrincipal",
            "name": "spn",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_service_principal"
        },
        {
            "address": "module.ServicePrincipal.azuread_service_principal_password.spn_pass",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "end_date_relative": null,
                    "rotate_when_changed": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "display_name": true,
                    "end_date": true,
                    "id": true,
                    "key_id": true,
                    "service_principal_id": true,
                    "start_date": true,
                    "value": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.ServicePrincipal",
            "name": "spn_pass",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_service_principal_password"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:11:37Z",
    "variables": {
        "admin_group_name": {
            "value": "AKS_Admins"
        },
        "aks_dns_service_ip": {
            "value": "10.240.0.53"
        },
        "aks_service_cidr": {
            "value": "10.240.0.0/12"
        },
        "aks_subnet_name": {
            "value": "AKS_Subnet"
        },
        "aks_subnet_pool": {
            "value": "10.10.1.0/24"
        },
        "appgw_name": {
            "value": "AKS_AppGW"
        },
        "appgw_subnet_name": {
            "value": "AppGW_Subnet"
        },
        "appgw_subnet_pool": {
            "value": "10.10.254.0/24"
        },
        "cluster_name": {
            "value": "test-aks-cluster"
        },
        "dev_aks_admin_group_id": {
            "value": ""
        },
        "dev_azure_subscription": {
            "value": ""
        },
        "key_vault_name": {
            "value": "AKS-Key-Vault-ykal"
        },
        "kubernetes_version": {
            "value": "1.29"
        },
        "la_workspace_name": {
            "value": "aks-loganalytics-ykal"
        },
        "location": {
            "value": "West US 2"
        },
        "nat_name": {
            "value": "aks_natgw"
        },
        "nat_pip_name": {
            "value": "aks_natgw_pip"
        },
        "node_count": {
            "value": 4
        },
        "prod_aks_admin_group_id": {
            "value": ""
        },
        "prod_azure_subscription": {
            "value": ""
        },
        "public_ip_name": {
            "value": "AppGW_PIP"
        },
        "rgname": {
            "value": "AKS_Deployment_RG"
        },
        "service_principal_name": {
            "value": "AKS_Deployment_SPN"
        },
        "virtual_network_name": {
            "value": "AKS_VNet"
        },
        "vm_size": {
            "value": "Standard_A2_v2"
        },
        "vnet_address_pool": {
            "value": "10.10.0.0/16"
        }
    }
}