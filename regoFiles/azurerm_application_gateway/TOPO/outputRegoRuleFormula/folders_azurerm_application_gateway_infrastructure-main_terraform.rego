
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
            "module.cluster:local": {
                "full_name": "registry.terraform.io/hashicorp/local",
                "module_address": "module.cluster",
                "name": "local"
            }
        },
        "root_module": {
            "module_calls": {
                "appgw": {
                    "expressions": {
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
                        "frontend_ip_configuration_name": {
                            "references": [
                                "local.frontend_ip_configuration_name"
                            ]
                        },
                        "frontend_port_name": {
                            "references": [
                                "local.frontend_port_HTTP_name"
                            ]
                        },
                        "http_listener_frontend_ip_configuration_name": {
                            "references": [
                                "local.frontend_ip_configuration_name"
                            ]
                        },
                        "http_listener_frontend_port_name": {
                            "references": [
                                "local.frontend_port_HTTP_name"
                            ]
                        },
                        "http_listener_name": {
                            "references": [
                                "local.listener_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.network.public_ip_id",
                                "module.network"
                            ]
                        },
                        "request_routing_rule_backend_address_pool_name": {
                            "references": [
                                "local.backend_address_pool_name"
                            ]
                        },
                        "request_routing_rule_backend_http_settings_name": {
                            "references": [
                                "local.http_setting_name"
                            ]
                        },
                        "request_routing_rule_http_listener_name": {
                            "references": [
                                "local.listener_name"
                            ]
                        },
                        "request_routing_rule_name": {
                            "references": [
                                "local.request_routing_rule_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.network.apgw_subnet_id",
                                "module.network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.myApplicationGateway",
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
                                            "var.application_gateway"
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
                                "name": "myApplicationGateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "application_gateway": {
                                "default": "myPLDApplicationGateway",
                                "description": "The name of the Application Gateway."
                            },
                            "backend_address_pool_name": {
                                "default": null,
                                "description": "The name of the backend address pool."
                            },
                            "backend_http_settings_name": {
                                "default": null,
                                "description": "The name of the backend HTTP settings."
                            },
                            "backend_http_settings_port": {
                                "default": 80,
                                "description": "The port number for the backend HTTP settings."
                            },
                            "backend_http_settings_protocol": {
                                "default": "Http",
                                "description": "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
                            },
                            "backend_http_settings_request_timeout": {
                                "default": 60,
                                "description": "The request timeout for the backend HTTP settings (in seconds)."
                            },
                            "cookie_based_affinity": {
                                "default": "Disabled"
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
                                "default": 80,
                                "description": "The port number of the frontend port."
                            },
                            "gateway_ip_configuration_name": {
                                "default": "appGatewayIpConfig",
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
                                "default": "Http",
                                "description": "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location/region where the Application Gateway will be deployed."
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
                                "default": 9,
                                "description": "The priority of the request routing rule."
                            },
                            "request_routing_rule_rule_type": {
                                "default": "Basic",
                                "description": "The type of the request routing rule."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Application Gateway."
                            },
                            "sku_capacity": {
                                "default": 2,
                                "description": "The capacity (instance count) of the SKU for the Application Gateway."
                            },
                            "sku_name": {
                                "default": "Standard_v2",
                                "description": "The name of the SKU for the Application Gateway."
                            },
                            "sku_tier": {
                                "default": "Standard_v2",
                                "description": "The tier of the SKU for the Application Gateway."
                            },
                            "subnet_id": {
                                "default": null,
                                "description": "The ID of the subnet to which the Application Gateway should be deployed."
                            }
                        }
                    },
                    "source": "./modules/appgw"
                },
                "cluster": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "private_cluster_enabled": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "secret_rotation_enabled": {
                            "constant_value": true
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.network.cluster_subnet_id",
                                "module.network"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "aks_secret_provider": {
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
                            },
                            "client_certificate-Store": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kube_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.aks_cluster.kube_config[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.kube_config",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                },
                                "sensitive": true
                            },
                            "cluster_ip": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.fqdn",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            },
                            "kube_config-Store": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kubelet_identity": {
                                "description": "The ID of the Kubernetes Cluster Identity",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity",
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
                                                    "var.node_pool"
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
                                                    "var.vnet_subnet_id"
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
                                                "constant_value": "SystemAssigned"
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
                                            "var.cluster_name"
                                        ]
                                    },
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
                                "provider_config_key": "module.cluster:local",
                                "schema_version": 0,
                                "type": "local_file"
                            }
                        ],
                        "variables": {
                            "cluster_name": {
                                "default": "aks_cluster",
                                "description": "Name of the AKS cluster"
                            },
                            "dns_prefix": {
                                "default": "MyClusterDNS",
                                "description": "DNS prefix for the AKS cluster"
                            },
                            "local_file": {
                                "default": "kubeconfig",
                                "description": "Name of the kuberneter file"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the AKS cluster"
                            },
                            "node_count": {
                                "default": 1,
                                "description": "Number of nodes in the default node pool"
                            },
                            "node_pool": {
                                "default": "nodepool",
                                "description": "Name of the default node pool"
                            },
                            "os_disk_size_gb": {
                                "default": 40,
                                "description": "Size of the OS disk in GB for nodes in the default node pool"
                            },
                            "private_cluster_enabled": {
                                "default": null,
                                "description": "Name of the kuberneter file"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "secret_rotation_enabled": {
                                "default": null,
                                "description": "Name of the kuberneter file"
                            },
                            "vm_size": {
                                "default": "Standard_D2_v2",
                                "description": "Size of VMs in the default node pool"
                            },
                            "vnet_subnet_id": {
                                "default": null,
                                "description": "ID of the subnet where the AKS cluster will be deployed"
                            }
                        }
                    },
                    "source": "./modules/cluster"
                },
                "container_registry": {
                    "expressions": {
                        "cr_name": {
                            "constant_value": "myPLDFirstContainerRegistry"
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "container_registry_id": {
                                "description": "The ID of the container registry",
                                "expression": {
                                    "references": [
                                        "azurerm_container_registry.container_registry.id",
                                        "azurerm_container_registry.container_registry"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_container_registry.container_registry",
                                "expressions": {
                                    "admin_enabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cr_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.container_sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "container_registry",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_container_registry"
                            }
                        ],
                        "variables": {
                            "container_sku": {
                                "default": "Standard",
                                "description": "The SKU name of the Azure Container Registry."
                            },
                            "cr_name": {
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
                            }
                        }
                    },
                    "source": "./modules/container_registry"
                },
                "identity": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "name": {
                            "constant_value": "myUserAssignedIdentity_Ecommerce"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "client_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.client_id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            },
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            },
                            "principal_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.principal_id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_user_assigned_identity.ecommerce_identity",
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
                                "name": "ecommerce_identity",
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
                                "default": "3ahehold",
                                "description": "The name of the user-assigned identity."
                            },
                            "resource_group_name": {
                                "default": "y0fphold",
                                "description": "The name of the resource group."
                            }
                        }
                    },
                    "source": "./modules/identity"
                },
                "keyvault": {
                    "expressions": {
                        "aks_secret_provider_id": {
                            "references": [
                                "module.cluster.aks_secret_provider",
                                "module.cluster"
                            ]
                        },
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
                            ]
                        },
                        "expire_after": {
                            "constant_value": "P90D"
                        },
                        "key_names": {
                            "constant_value": [
                                "myPLDKey1",
                                "myPLDKey2"
                            ]
                        },
                        "key_opts": {
                            "constant_value": [
                                "decrypt",
                                "encrypt",
                                "sign",
                                "unwrapKey",
                                "verify",
                                "wrapKey"
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
                        "key_sizes": {
                            "constant_value": [
                                2048,
                                2048
                            ]
                        },
                        "key_types": {
                            "constant_value": [
                                "RSA",
                                "RSA"
                            ]
                        },
                        "key_vault_name": {
                            "constant_value": "myPLDKeyVault"
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "notify_before_expiry": {
                            "constant_value": "P29D"
                        },
                        "object_id": {
                            "references": [
                                "local.current_user_id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "secret_names": {
                            "constant_value": [
                                "mySecret1",
                                "mySecret2"
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
                        "secret_values": {
                            "constant_value": [
                                "miprimeracontra1!",
                                "misegundacontra2!"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "time_before_expiry": {
                            "constant_value": "P30D"
                        },
                        "user_assigned_identity_principal_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "key_vault_id": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "name": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.name",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "secrets": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault_secret.key_vault_secret"
                                    ]
                                }
                            },
                            "tenant_id": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.tenant_id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_key_vault.key_vault",
                                "expressions": {
                                    "access_policy": {
                                        "references": [
                                            "var.object_id",
                                            "var.secret_permissions",
                                            "var.tenant_id",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.aks_secret_provider_id",
                                            "var.secret_permissions",
                                            "data.azurerm_client_config.current.tenant_id",
                                            "data.azurerm_client_config.current"
                                        ]
                                    },
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
                            },
                            {
                                "address": "azurerm_key_vault_key.key_vault_key",
                                "count_expression": {
                                    "references": [
                                        "var.key_names"
                                    ]
                                },
                                "expressions": {
                                    "key_opts": {
                                        "references": [
                                            "var.key_opts"
                                        ]
                                    },
                                    "key_size": {
                                        "references": [
                                            "var.key_sizes",
                                            "count.index"
                                        ]
                                    },
                                    "key_type": {
                                        "references": [
                                            "var.key_types",
                                            "count.index"
                                        ]
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.key_names",
                                            "count.index"
                                        ]
                                    },
                                    "rotation_policy": [
                                        {
                                            "automatic": [
                                                {
                                                    "time_before_expiry": {
                                                        "references": [
                                                            "var.time_before_expiry"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "expire_after": {
                                                "references": [
                                                    "var.expire_after"
                                                ]
                                            },
                                            "notify_before_expiry": {
                                                "references": [
                                                    "var.notify_before_expiry"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "key_vault_key",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_key"
                            },
                            {
                                "address": "azurerm_key_vault_secret.key_vault_secret",
                                "count_expression": {
                                    "references": [
                                        "var.secret_names"
                                    ]
                                },
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.secret_names",
                                            "count.index"
                                        ]
                                    },
                                    "value": {
                                        "references": [
                                            "var.secret_values",
                                            "count.index"
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
                                "address": "data.azurerm_client_config.current",
                                "mode": "data",
                                "name": "current",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            }
                        ],
                        "variables": {
                            "aks_secret_provider_id": {
                                "default": "null"
                            },
                            "certificate_permissions": {
                                "default": [],
                                "description": "Certificate permissions"
                            },
                            "enabled_for_disk_encryption": {
                                "default": true,
                                "description": "Notify before expiry"
                            },
                            "expire_after": {
                                "default": null,
                                "description": "Expire after"
                            },
                            "key_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault keys"
                            },
                            "key_opts": {
                                "default": [],
                                "description": "Key options"
                            },
                            "key_permissions": {
                                "default": [],
                                "description": "Key permissions"
                            },
                            "key_sizes": {
                                "default": [],
                                "description": "Sizes of the Azure Key Vault keys"
                            },
                            "key_types": {
                                "default": [],
                                "description": "Types of the Azure Key Vault keys"
                            },
                            "key_vault_name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure Key Vault"
                            },
                            "notify_before_expiry": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "object_id": {
                                "default": null,
                                "description": "Object ID"
                            },
                            "purge_protection_enabled": {
                                "default": false,
                                "description": "Notify before expiry"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "secret_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault secrets"
                            },
                            "secret_permissions": {
                                "default": [],
                                "description": "Secret permissions"
                            },
                            "secret_values": {
                                "default": [],
                                "description": "Values of the Azure Key Vault secrets"
                            },
                            "sku_name": {
                                "default": "Standard",
                                "description": "SKU name for the Azure Key Vault"
                            },
                            "soft_delete_retention_days": {
                                "default": 7,
                                "description": "Soft delete retention period in days"
                            },
                            "tenant_id": {
                                "default": null,
                                "description": "Tenant ID"
                            },
                            "time_before_expiry": {
                                "default": null,
                                "description": "Time before expiry"
                            },
                            "user_assigned_identity_principal_id": {
                                "default": "10.0.0.0/16",
                                "description": "The principal ID of the user-assigned identity."
                            }
                        }
                    },
                    "source": "./modules/keyvault"
                },
                "network": {
                    "expressions": {
                        "apgw_subnet_address_prefixes": {
                            "constant_value": [
                                "10.1.10.0/24"
                            ]
                        },
                        "apgw_vnet_address_space": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "cluster_subnet_address_prefixes": {
                            "constant_value": [
                                "10.2.10.0/24"
                            ]
                        },
                        "cluster_vnet_address_space": {
                            "constant_value": [
                                "10.2.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "apgw_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.apiGatewaySubnet.id",
                                        "azurerm_subnet.apiGatewaySubnet"
                                    ]
                                }
                            },
                            "apgw_vnet": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.apiVnet.name",
                                        "azurerm_virtual_network.apiVnet"
                                    ]
                                }
                            },
                            "api_vnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.apiVnet.id",
                                        "azurerm_virtual_network.apiVnet"
                                    ]
                                }
                            },
                            "cluster_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.clusterSubnet.id",
                                        "azurerm_subnet.clusterSubnet"
                                    ]
                                }
                            },
                            "cluster_vnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.clusterVnet.id",
                                        "azurerm_virtual_network.clusterVnet"
                                    ]
                                }
                            },
                            "public_ip_id": {
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
                                            "var.public_ip"
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
                            },
                            {
                                "address": "azurerm_subnet.apiGatewaySubnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.apgw_subnet_address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.apgw_subnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.name",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "apiGatewaySubnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.clusterSubnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.cluster_subnet_address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_subnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.name",
                                            "azurerm_virtual_network.clusterVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "clusterSubnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.apiVnet",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.apgw_vnet_address_space"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.apgw_vnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "apiVnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network.clusterVnet",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.cluster_vnet_address_space"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_vnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "clusterVnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.appgw_to_cluster_peering"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.id",
                                            "azurerm_virtual_network.clusterVnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.name",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "AppGWtoClusterVnetPeering",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_to_appgw_peering"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.id",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.name",
                                            "azurerm_virtual_network.clusterVnet"
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
                            "allocation_method": {
                                "default": "Static",
                                "description": "Allocation method for the Public IP"
                            },
                            "apgw_subnet": {
                                "default": "apiGatewaySubnet",
                                "description": "Name of the API Gateway Subnet"
                            },
                            "apgw_subnet_address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Address prefixes for the API Gateway Subnet"
                            },
                            "apgw_vnet": {
                                "default": "ApiVnet",
                                "description": "Name of the API Virtual Network"
                            },
                            "apgw_vnet_address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Address space for the API Virtual Network"
                            },
                            "appgw_to_cluster_peering": {
                                "default": "AppGWtoClusterVnetPeering",
                                "description": "Name of the peering from AppGW to Cluster VNet"
                            },
                            "cluster_subnet": {
                                "default": "clusterSubnet",
                                "description": "Name of the Cluster Subnet"
                            },
                            "cluster_subnet_address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Address prefixes for the Cluster Subnet"
                            },
                            "cluster_to_appgw_peering": {
                                "default": "ClustertoAppGWVnetPeering",
                                "description": "Name of the peering from Cluster to AppGW VNet"
                            },
                            "cluster_vnet": {
                                "default": "myClusterVnet",
                                "description": "Name of the Cluster Virtual Network"
                            },
                            "cluster_vnet_address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Address space for the Cluster Virtual Network"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure resources"
                            },
                            "public_ip": {
                                "default": "myFirstPublicIp",
                                "description": "Name of the Azure Public IP"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "sku": {
                                "default": "Standard",
                                "description": "SKU for the Public IP"
                            }
                        }
                    },
                    "source": "./modules/network"
                },
                "resources": {
                    "expressions": {
                        "location": {
                            "constant_value": "East US"
                        },
                        "resource_group_name": {
                            "constant_value": "ApiK8sResourceGroup"
                        }
                    },
                    "module": {
                        "outputs": {
                            "location": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.argk8s.location",
                                        "azurerm_resource_group.argk8s"
                                    ]
                                }
                            },
                            "resource_group_name": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.argk8s.name",
                                        "azurerm_resource_group.argk8s"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_resource_group.argk8s",
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
                                    }
                                },
                                "mode": "managed",
                                "name": "argk8s",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource group in which to create the Azure Container Registry."
                            },
                            "resource_group_name": {
                                "default": "ApiK8sResourceGroup",
                                "description": "The name of the resource group in which to create the Azure Container Registry."
                            }
                        }
                    },
                    "source": "./modules/resources"
                },
                "security_group": {
                    "expressions": {
                        "resource_group_location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "security_group_name": {
                            "constant_value": "SecurityGroupPLD"
                        }
                    },
                    "module": {
                        "outputs": {
                            "security_group_id": {
                                "description": "The ID of the security group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.storeGroup.id",
                                        "azurerm_network_security_group.storeGroup"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.storeGroup",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.resource_group_location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.security_group_name"
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
                                                "destination_port_range": "22",
                                                "destination_port_ranges": null,
                                                "direction": "Inbound",
                                                "name": "SSH",
                                                "priority": 1001,
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
                                "name": "storeGroup",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            }
                        ],
                        "variables": {
                            "resource_group_location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name for the resource group"
                            },
                            "security_group_name": {
                                "default": null,
                                "description": "Name for the security group"
                            }
                        }
                    },
                    "source": "./modules/security_group"
                }
            },
            "resources": [
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.appgw",
                    "resources": [
                        {
                            "address": "module.appgw.azurerm_application_gateway.myApplicationGateway",
                            "mode": "managed",
                            "name": "myApplicationGateway",
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
                                        "name": "ApiVnet-beap"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "ApiVnet-be-htst",
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
                                        "name": "ApiVnet-feip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "ApiVnet-fe_HTTP_port",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appGatewayIpConfig"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "ApiVnet-feip",
                                        "frontend_port_name": "ApiVnet-fe_HTTP_port",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "ApiVnet-httplstn",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "myPLDApplicationGateway",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "ApiVnet-beap",
                                        "backend_http_settings_name": "ApiVnet-be-htst",
                                        "http_listener_name": "ApiVnet-httplstn",
                                        "name": "ApiVnet-rqrt",
                                        "priority": 9,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "ApiK8sResourceGroup",
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
                    "address": "module.cluster",
                    "resources": [
                        {
                            "address": "module.cluster.azurerm_kubernetes_cluster.aks_cluster",
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
                                "network_profile": [],
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
                                        "name": "nodepool",
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
                                        "vm_size": "Standard_D2_v2",
                                        "zones": null
                                    }
                                ],
                                "disk_encryption_set_id": null,
                                "dns_prefix": "MyClusterDNS",
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
                                "name": "aks_cluster",
                                "node_os_channel_upgrade": null,
                                "oidc_issuer_enabled": null,
                                "oms_agent": [],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "ApiK8sResourceGroup",
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
                            "address": "module.cluster.local_file.kubeconfig",
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
                                "filename": "kubeconfig",
                                "sensitive_content": null,
                                "source": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.container_registry",
                    "resources": [
                        {
                            "address": "module.container_registry.azurerm_container_registry.container_registry",
                            "mode": "managed",
                            "name": "container_registry",
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
                                "name": "myPLDFirstContainerRegistry",
                                "network_rule_bypass_option": "AzureServices",
                                "public_network_access_enabled": true,
                                "quarantine_policy_enabled": null,
                                "resource_group_name": "ApiK8sResourceGroup",
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
                            "address": "module.identity.azurerm_user_assigned_identity.ecommerce_identity",
                            "mode": "managed",
                            "name": "ecommerce_identity",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_user_assigned_identity",
                            "values": {
                                "location": "eastus",
                                "name": "myUserAssignedIdentity_Ecommerce",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.keyvault",
                    "resources": [
                        {
                            "address": "module.keyvault.azurerm_key_vault.key_vault",
                            "mode": "managed",
                            "name": "key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [
                                    {
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
                                    {
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
                                    }
                                ],
                                "contact": [],
                                "network_acls": []
                            },
                            "type": "azurerm_key_vault",
                            "values": {
                                "access_policy": [
                                    {
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
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    },
                                    {
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
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    }
                                ],
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": true,
                                "enabled_for_template_deployment": null,
                                "location": "eastus",
                                "name": "myPLDKeyVault",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": false,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "key_vault_key",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "key_opts": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {}
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_key_vault_key",
                            "values": {
                                "expiration_date": null,
                                "key_opts": [
                                    "decrypt",
                                    "encrypt",
                                    "sign",
                                    "unwrapKey",
                                    "verify",
                                    "wrapKey"
                                ],
                                "key_size": 2048,
                                "key_type": "RSA",
                                "name": "myPLDKey1",
                                "not_before_date": null,
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {
                                                "time_after_creation": null,
                                                "time_before_expiry": "P30D"
                                            }
                                        ],
                                        "expire_after": "P90D",
                                        "notify_before_expiry": "P29D"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "key_vault_key",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "key_opts": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {}
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_key_vault_key",
                            "values": {
                                "expiration_date": null,
                                "key_opts": [
                                    "decrypt",
                                    "encrypt",
                                    "sign",
                                    "unwrapKey",
                                    "verify",
                                    "wrapKey"
                                ],
                                "key_size": 2048,
                                "key_type": "RSA",
                                "name": "myPLDKey2",
                                "not_before_date": null,
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {
                                                "time_after_creation": null,
                                                "time_before_expiry": "P30D"
                                            }
                                        ],
                                        "expire_after": "P90D",
                                        "notify_before_expiry": "P29D"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[0]",
                            "index": 0,
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
                                "name": "mySecret1",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "miprimeracontra1!"
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[1]",
                            "index": 1,
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
                                "name": "mySecret2",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "misegundacontra2!"
                            }
                        }
                    ]
                },
                {
                    "address": "module.network",
                    "resources": [
                        {
                            "address": "module.network.azurerm_public_ip.publicIp",
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
                                "name": "myFirstPublicIp",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.apiGatewaySubnet",
                            "mode": "managed",
                            "name": "apiGatewaySubnet",
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
                                    "10.1.10.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "apiGatewaySubnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "ApiVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.clusterSubnet",
                            "mode": "managed",
                            "name": "clusterSubnet",
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
                                    "10.2.10.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "clusterSubnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "myClusterVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.apiVnet",
                            "mode": "managed",
                            "name": "apiVnet",
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
                                "name": "ApiVnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.clusterVnet",
                            "mode": "managed",
                            "name": "clusterVnet",
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
                                    "10.2.0.0/16"
                                ],
                                "bgp_community": null,
                                "ddos_protection_plan": [],
                                "edge_zone": null,
                                "encryption": [],
                                "flow_timeout_in_minutes": null,
                                "location": "eastus",
                                "name": "myClusterVnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
                            "mode": "managed",
                            "name": "AppGWtoClusterVnetPeering",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "AppGWtoClusterVnetPeering",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "ApiVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
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
                                "name": "ClustertoAppGWVnetPeering",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "myClusterVnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.resources",
                    "resources": [
                        {
                            "address": "module.resources.azurerm_resource_group.argk8s",
                            "mode": "managed",
                            "name": "argk8s",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.security_group",
                    "resources": [
                        {
                            "address": "module.security_group.azurerm_network_security_group.storeGroup",
                            "mode": "managed",
                            "name": "storeGroup",
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
                                "location": "eastus",
                                "name": "SecurityGroupPLD",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "22",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "SSH",
                                        "priority": 1001,
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
                        "address": "module.keyvault",
                        "resources": [
                            {
                                "address": "module.keyvault.data.azurerm_client_config.current",
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
                ],
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
                "id"
            ],
            "resource": "module.network.azurerm_virtual_network.clusterVnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_public_ip.publicIp"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.security_group.azurerm_network_security_group.storeGroup"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.container_registry.azurerm_container_registry.container_registry"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.network.azurerm_virtual_network.clusterVnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.network.azurerm_virtual_network.apiVnet"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.apiGatewaySubnet"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "kubelet_identity",
                0,
                "object_id"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.resources.azurerm_resource_group.argk8s"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.resources.azurerm_resource_group.argk8s"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_certificate"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0,
                "secret_identity",
                0,
                "object_id"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.keyvault.data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.clusterSubnet"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [],
            "resource": "module.keyvault.azurerm_key_vault_secret.key_vault_secret"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_virtual_network.apiVnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        }
    ],
    "resource_changes": [
        {
            "address": "module.appgw.azurerm_application_gateway.myApplicationGateway",
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
                            "name": "ApiVnet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "ApiVnet-be-htst",
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
                            "name": "ApiVnet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "ApiVnet-fe_HTTP_port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appGatewayIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "ApiVnet-feip",
                            "frontend_port_name": "ApiVnet-fe_HTTP_port",
                            "host_name": "",
                            "host_names": [],
                            "name": "ApiVnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "myPLDApplicationGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "ApiVnet-beap",
                            "backend_http_settings_name": "ApiVnet-be-htst",
                            "http_listener_name": "ApiVnet-httplstn",
                            "name": "ApiVnet-rqrt",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.appgw",
            "name": "myApplicationGateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.cluster.azurerm_kubernetes_cluster.aks_cluster",
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
                            "name": "nodepool",
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
                            "vm_size": "Standard_D2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "MyClusterDNS",
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
                    "name": "aks_cluster",
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "ApiK8sResourceGroup",
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
                    "network_profile": [],
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
                    "network_profile": true,
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
            "module_address": "module.cluster",
            "name": "aks_cluster",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.cluster.local_file.kubeconfig",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_base64": null,
                    "directory_permission": "0777",
                    "file_permission": "0777",
                    "filename": "kubeconfig",
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
            "module_address": "module.cluster",
            "name": "kubeconfig",
            "provider_name": "registry.terraform.io/hashicorp/local",
            "type": "local_file"
        },
        {
            "address": "module.container_registry.azurerm_container_registry.container_registry",
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
                    "name": "myPLDFirstContainerRegistry",
                    "network_rule_bypass_option": "AzureServices",
                    "public_network_access_enabled": true,
                    "quarantine_policy_enabled": null,
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "name": "container_registry",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_registry"
        },
        {
            "address": "module.identity.azurerm_user_assigned_identity.ecommerce_identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "myUserAssignedIdentity_Ecommerce",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "name": "ecommerce_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "module.keyvault.azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
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
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        },
                        {
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
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "myPLDKeyVault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [
                        {
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
                        {
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
                        }
                    ],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": [
                        {
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
                        {
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
                            "object_id": true,
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "contact": true,
                    "id": true,
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "expiration_date": null,
                    "key_opts": [
                        "decrypt",
                        "encrypt",
                        "sign",
                        "unwrapKey",
                        "verify",
                        "wrapKey"
                    ],
                    "key_size": 2048,
                    "key_type": "RSA",
                    "name": "myPLDKey1",
                    "not_before_date": null,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {
                                    "time_after_creation": null,
                                    "time_before_expiry": "P30D"
                                }
                            ],
                            "expire_after": "P90D",
                            "notify_before_expiry": "P29D"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "curve": true,
                    "e": true,
                    "id": true,
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "key_vault_id": true,
                    "n": true,
                    "public_key_openssh": true,
                    "public_key_pem": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ],
                    "version": true,
                    "versionless_id": true,
                    "x": true,
                    "y": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_key",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_key"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "expiration_date": null,
                    "key_opts": [
                        "decrypt",
                        "encrypt",
                        "sign",
                        "unwrapKey",
                        "verify",
                        "wrapKey"
                    ],
                    "key_size": 2048,
                    "key_type": "RSA",
                    "name": "myPLDKey2",
                    "not_before_date": null,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {
                                    "time_after_creation": null,
                                    "time_before_expiry": "P30D"
                                }
                            ],
                            "expire_after": "P90D",
                            "notify_before_expiry": "P29D"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "curve": true,
                    "e": true,
                    "id": true,
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "key_vault_id": true,
                    "n": true,
                    "public_key_openssh": true,
                    "public_key_pem": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ],
                    "version": true,
                    "versionless_id": true,
                    "x": true,
                    "y": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_key",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_key"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "mySecret1",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "miprimeracontra1!"
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "mySecret2",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "misegundacontra2!"
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.network.azurerm_public_ip.publicIp",
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
                    "name": "myFirstPublicIp",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "publicIp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.network.azurerm_subnet.apiGatewaySubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "apiGatewaySubnet",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "ApiVnet"
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
            "module_address": "module.network",
            "name": "apiGatewaySubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_subnet.clusterSubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.2.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "clusterSubnet",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "myClusterVnet"
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
            "module_address": "module.network",
            "name": "clusterSubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_virtual_network.apiVnet",
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
                    "name": "ApiVnet",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "apiVnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.network.azurerm_virtual_network.clusterVnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.2.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
                    "name": "myClusterVnet",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "clusterVnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.network.azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "AppGWtoClusterVnetPeering",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "ApiVnet"
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
            "module_address": "module.network",
            "name": "AppGWtoClusterVnetPeering",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.network.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "ClustertoAppGWVnetPeering",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "myClusterVnet"
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
            "module_address": "module.network",
            "name": "ClustertoAppGWVnetPeering",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.resources.azurerm_resource_group.argk8s",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "ApiK8sResourceGroup",
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
            "module_address": "module.resources",
            "name": "argk8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.security_group.azurerm_network_security_group.storeGroup",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "SecurityGroupPLD",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "22",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "SSH",
                            "priority": 1001,
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
            "module_address": "module.security_group",
            "name": "storeGroup",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:00:21Z"
}