
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
            "http": {
                "full_name": "registry.terraform.io/hashicorp/http",
                "name": "http"
            }
        },
        "root_module": {
            "outputs": {
                "id": {
                    "expression": {
                        "references": [
                            "azurerm_container_group.container_group.id",
                            "azurerm_container_group.container_group"
                        ]
                    }
                },
                "ip": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.public_ip.ip_address",
                            "azurerm_public_ip.public_ip"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azuread_application.app",
                    "expressions": {
                        "display_name": {
                            "references": [
                                "var.app_name"
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
                    "name": "app",
                    "provider_config_key": "azuread",
                    "schema_version": 2,
                    "type": "azuread_application"
                },
                {
                    "address": "azuread_service_principal.app",
                    "expressions": {
                        "app_role_assignment_required": {
                            "constant_value": false
                        },
                        "application_id": {
                            "references": [
                                "azuread_application.app.application_id",
                                "azuread_application.app"
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
                    "name": "app",
                    "provider_config_key": "azuread",
                    "schema_version": 0,
                    "type": "azuread_service_principal"
                },
                {
                    "address": "azuread_service_principal_password.app",
                    "expressions": {
                        "service_principal_id": {
                            "references": [
                                "azuread_service_principal.app.id",
                                "azuread_service_principal.app"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app",
                    "provider_config_key": "azuread",
                    "schema_version": 1,
                    "type": "azuread_service_principal_password"
                },
                {
                    "address": "azurerm_application_gateway.network",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_container_group.container_group.ip_address",
                                        "azurerm_container_group.container_group"
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
                                "port": {
                                    "constant_value": 6789
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
                                    "references": [
                                        "var.app_name",
                                        "var.app_environment"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.sn-public.id",
                                        "azurerm_subnet.sn-public"
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
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
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
                                    "constant_value": 10
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
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
                    "address": "azurerm_container_group.container_group",
                    "expressions": {
                        "container": [
                            {
                                "cpu": {
                                    "references": [
                                        "var.container_cpu"
                                    ]
                                },
                                "environment_variables": {
                                    "references": [
                                        "azuread_service_principal.app.application_id",
                                        "azuread_service_principal.app",
                                        "azuread_service_principal_password.app.value",
                                        "azuread_service_principal_password.app",
                                        "var.storage_account_name",
                                        "azurerm_storage_account.aci_storage.primary_access_key",
                                        "azurerm_storage_account.aci_storage",
                                        "data.azurerm_subscription.current.subscription_id",
                                        "data.azurerm_subscription.current",
                                        "azurerm_resource_group.resource_group.name",
                                        "azurerm_resource_group.resource_group",
                                        "var.app_name",
                                        "var.app_environment",
                                        "azuread_service_principal.app.application_tenant_id",
                                        "azuread_service_principal.app"
                                    ]
                                },
                                "image": {
                                    "references": [
                                        "var.docker_image"
                                    ]
                                },
                                "memory": {
                                    "references": [
                                        "var.container_memory"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.app_name",
                                        "var.app_environment"
                                    ]
                                },
                                "ports": [
                                    {
                                        "port": {
                                            "constant_value": 6789
                                        },
                                        "protocol": {
                                            "constant_value": "TCP"
                                        }
                                    }
                                ],
                                "volume": [
                                    {
                                        "mount_path": {
                                            "constant_value": "/home/src"
                                        },
                                        "name": {
                                            "references": [
                                                "var.app_name"
                                            ]
                                        },
                                        "share_name": {
                                            "references": [
                                                "azurerm_storage_share.container_share.name",
                                                "azurerm_storage_share.container_share"
                                            ]
                                        },
                                        "storage_account_key": {
                                            "references": [
                                                "azurerm_storage_account.aci_storage.primary_access_key",
                                                "azurerm_storage_account.aci_storage"
                                            ]
                                        },
                                        "storage_account_name": {
                                            "references": [
                                                "azurerm_storage_account.aci_storage.name",
                                                "azurerm_storage_account.aci_storage"
                                            ]
                                        }
                                    }
                                ]
                            }
                        ],
                        "ip_address_type": {
                            "constant_value": "Private"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "os_type": {
                            "constant_value": "Linux"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "subnet_ids": {
                            "references": [
                                "azurerm_subnet.sn-aci.id",
                                "azurerm_subnet.sn-aci"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.app_environment"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "container_group",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_group"
                },
                {
                    "address": "azurerm_key_vault.kv",
                    "expressions": {
                        "access_policy": {
                            "references": [
                                "azuread_service_principal.app.id",
                                "azuread_service_principal.app",
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.key_vault_name"
                            ]
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
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
                    "mode": "managed",
                    "name": "kv",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_network_profile.containergroup_profile",
                    "expressions": {
                        "container_network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "name": {
                                            "constant_value": "aciipconfig"
                                        },
                                        "subnet_id": {
                                            "references": [
                                                "azurerm_subnet.sn-aci.id",
                                                "azurerm_subnet.sn-aci"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "references": [
                                        "var.app_name",
                                        "var.app_environment"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "containergroup_profile",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_profile"
                },
                {
                    "address": "azurerm_network_security_group.nsg-aci",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "security_rule": {
                            "references": [
                                "azurerm_subnet.sn-aci.address_prefixes",
                                "azurerm_subnet.sn-aci",
                                "azurerm_subnet.sn-public.address_prefixes",
                                "azurerm_subnet.sn-public"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-aci",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.nsg-public",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "security_rule": {
                            "references": [
                                "data.http.myip.response_body",
                                "data.http.myip"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_public_ip.public_ip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.resource_group",
                    "expressions": {
                        "location": {
                            "constant_value": "West US 2"
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "resource_group",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.custom_role",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azuread_service_principal.app.id",
                                "azuread_service_principal.app"
                            ]
                        },
                        "role_definition_id": {
                            "references": [
                                "azurerm_role_definition.custom_role.role_definition_resource_id",
                                "azurerm_role_definition.custom_role"
                            ]
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.current.id",
                                "data.azurerm_subscription.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "custom_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.storage",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azuread_service_principal.app.id",
                                "azuread_service_principal.app"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Storage Blob Data Reader"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.current.id",
                                "data.azurerm_subscription.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "storage",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_definition.custom_role",
                    "expressions": {
                        "assignable_scopes": {
                            "references": [
                                "data.azurerm_subscription.current.id",
                                "data.azurerm_subscription.current"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name"
                            ]
                        },
                        "permissions": [
                            {
                                "actions": {
                                    "constant_value": [
                                        "Microsoft.ContainerInstance/containerGroups/read",
                                        "Microsoft.ContainerInstance/containerGroups/write",
                                        "Microsoft.ContainerInstance/containerGroups/delete"
                                    ]
                                },
                                "not_actions": {
                                    "constant_value": []
                                }
                            }
                        ],
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.current.id",
                                "data.azurerm_subscription.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "custom_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_role_definition"
                },
                {
                    "address": "azurerm_storage_account.aci_storage",
                    "expressions": {
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Standard"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "min_tls_version": {
                            "constant_value": "TLS1_2"
                        },
                        "name": {
                            "references": [
                                "var.storage_account_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aci_storage",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "azurerm_storage_share.container_share",
                    "expressions": {
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "quota": {
                            "constant_value": 100
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.aci_storage.name",
                                "azurerm_storage_account.aci_storage"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "container_share",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_storage_share"
                },
                {
                    "address": "azurerm_subnet.sn-aci",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.10.0/24"
                            ]
                        },
                        "delegation": [
                            {
                                "name": {
                                    "constant_value": "acidelegationservice"
                                },
                                "service_delegation": [
                                    {
                                        "actions": {
                                            "constant_value": [
                                                "Microsoft.Network/virtualNetworks/subnets/action"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "Microsoft.ContainerInstance/containerGroups"
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "aci"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "service_endpoints": {
                            "constant_value": [
                                "Microsoft.Storage",
                                "Microsoft.KeyVault"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.virtual_network.name",
                                "azurerm_virtual_network.virtual_network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sn-aci",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.sn-public",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.20.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "public"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.virtual_network.name",
                                "azurerm_virtual_network.virtual_network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sn-public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-aci.id",
                                "azurerm_network_security_group.nsg-aci"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.sn-aci.id",
                                "azurerm_subnet.sn-aci"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sn-nsg-aci",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-public.id",
                                "azurerm_network_security_group.nsg-public"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.sn-public.id",
                                "azurerm_subnet.sn-public"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sn-nsg-public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_network.virtual_network",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "dns_servers": {
                            "constant_value": [
                                "10.0.0.4",
                                "10.0.0.5"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.resource_group.location",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_name",
                                "var.app_environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.resource_group.name",
                                "azurerm_resource_group.resource_group"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.app_environment"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "virtual_network",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "data.azuread_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azuread",
                    "schema_version": 0,
                    "type": "azuread_client_config"
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
                    "address": "data.azurerm_subscription.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subscription"
                },
                {
                    "address": "data.http.myip",
                    "expressions": {
                        "url": {
                            "constant_value": "http://ipv4.icanhazip.com"
                        }
                    },
                    "mode": "data",
                    "name": "myip",
                    "provider_config_key": "http",
                    "schema_version": 0,
                    "type": "http"
                }
            ],
            "variables": {
                "app_environment": {
                    "default": "production",
                    "description": "Application Environment"
                },
                "app_name": {
                    "default": "mage-data-prep",
                    "description": "Application Name"
                },
                "container_cpu": {
                    "default": "2",
                    "description": "Container cpu"
                },
                "container_memory": {
                    "default": "2",
                    "description": "Container memory"
                },
                "docker_image": {
                    "default": "mageai/mageai:latest",
                    "description": "Docker image url."
                },
                "key_vault_name": {
                    "default": "magedataprepkeyvault",
                    "description": "Key vault name. It must be globally unique across Azure."
                },
                "storage_account_name": {
                    "default": "magedataprepstorage",
                    "description": "Storage account name. It must be globally unique across Azure."
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "ip": {
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
            "id": {
                "sensitive": false
            },
            "ip": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azuread_application.app",
                    "mode": "managed",
                    "name": "app",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 2,
                    "sensitive_values": {
                        "api": [],
                        "app_role": [],
                        "app_role_ids": {},
                        "feature_tags": [],
                        "oauth2_permission_scope_ids": {},
                        "optional_claims": [],
                        "owners": [
                            false
                        ],
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
                        "display_name": "mage-data-prep-app",
                        "fallback_public_client_enabled": null,
                        "group_membership_claims": null,
                        "identifier_uris": null,
                        "logo_image": null,
                        "marketing_url": null,
                        "notes": null,
                        "oauth2_post_response_required": null,
                        "optional_claims": [],
                        "owners": [
                            "62e5370a-2bf4-4734-8511-cc798825f062"
                        ],
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
                    "address": "azuread_service_principal.app",
                    "mode": "managed",
                    "name": "app",
                    "provider_name": "registry.terraform.io/hashicorp/azuread",
                    "schema_version": 0,
                    "sensitive_values": {
                        "app_role_ids": {},
                        "app_roles": [],
                        "feature_tags": [],
                        "features": [],
                        "oauth2_permission_scope_ids": {},
                        "oauth2_permission_scopes": [],
                        "owners": [
                            false
                        ],
                        "redirect_uris": [],
                        "saml_single_sign_on": [],
                        "service_principal_names": [],
                        "tags": []
                    },
                    "type": "azuread_service_principal",
                    "values": {
                        "account_enabled": true,
                        "alternative_names": null,
                        "app_role_assignment_required": false,
                        "description": null,
                        "login_url": null,
                        "notes": null,
                        "notification_email_addresses": null,
                        "owners": [
                            "62e5370a-2bf4-4734-8511-cc798825f062"
                        ],
                        "preferred_single_sign_on_mode": null,
                        "saml_single_sign_on": [],
                        "timeouts": null,
                        "use_existing": null
                    }
                },
                {
                    "address": "azuread_service_principal_password.app",
                    "mode": "managed",
                    "name": "app",
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
                                "name": "mage-data-prep-production-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "mage-data-prep-production-http-setting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 6789,
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
                                "name": "mage-data-prep-production-frontend-ip-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "mage-data-prep-production-frontend-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "mage-data-prep-production-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "mage-data-prep-production-frontend-ip-config",
                                "frontend_port_name": "mage-data-prep-production-frontend-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "mage-data-prep-production-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus2",
                        "name": "mage-data-prep-production-app-gateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "mage-data-prep-production-backend-pool",
                                "backend_http_settings_name": "mage-data-prep-production-http-setting",
                                "http_listener_name": "mage-data-prep-production-listener",
                                "name": "mage-data-prep-production-routing-rule",
                                "priority": 10,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "mage-data-prep-production",
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
                    "address": "azurerm_container_group.container_group",
                    "mode": "managed",
                    "name": "container_group",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "container": [
                            {
                                "commands": [],
                                "environment_variables": {},
                                "gpu": [],
                                "gpu_limit": [],
                                "liveness_probe": [],
                                "ports": [
                                    {}
                                ],
                                "readiness_probe": [],
                                "secure_environment_variables": true,
                                "security": [],
                                "volume": [
                                    {
                                        "git_repo": [],
                                        "secret": true,
                                        "storage_account_key": true
                                    }
                                ]
                            }
                        ],
                        "diagnostics": [],
                        "dns_config": [],
                        "exposed_port": [],
                        "identity": [],
                        "image_registry_credential": [],
                        "init_container": [],
                        "subnet_ids": [],
                        "tags": {}
                    },
                    "type": "azurerm_container_group",
                    "values": {
                        "container": [
                            {
                                "cpu": 2,
                                "cpu_limit": null,
                                "gpu": [],
                                "gpu_limit": [],
                                "image": "mageai/mageai:latest",
                                "liveness_probe": [],
                                "memory": 2,
                                "memory_limit": null,
                                "name": "mage-data-prep-production-container",
                                "ports": [
                                    {
                                        "port": 6789,
                                        "protocol": "TCP"
                                    }
                                ],
                                "readiness_probe": [],
                                "secure_environment_variables": null,
                                "security": [],
                                "volume": [
                                    {
                                        "empty_dir": false,
                                        "git_repo": [],
                                        "mount_path": "/home/src",
                                        "name": "mage-data-prep-fs",
                                        "read_only": false,
                                        "secret": null,
                                        "share_name": "mage-data-prep-production-data",
                                        "storage_account_name": "magedataprepstorage"
                                    }
                                ]
                            }
                        ],
                        "diagnostics": [],
                        "dns_config": [],
                        "dns_name_label": null,
                        "dns_name_label_reuse_policy": "Unsecure",
                        "identity": [],
                        "image_registry_credential": [],
                        "init_container": [],
                        "ip_address_type": "Private",
                        "key_vault_key_id": null,
                        "key_vault_user_assigned_identity_id": null,
                        "location": "westus2",
                        "name": "mage-data-prep-production",
                        "os_type": "Linux",
                        "priority": null,
                        "resource_group_name": "mage-data-prep-production",
                        "restart_policy": "Always",
                        "sku": "Standard",
                        "tags": {
                            "Environment": "production"
                        },
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_key_vault.kv",
                    "mode": "managed",
                    "name": "kv",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [
                            {
                                "certificate_permissions": [
                                    false,
                                    false
                                ],
                                "key_permissions": [
                                    false,
                                    false
                                ],
                                "secret_permissions": [
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
                                    "Get",
                                    "List"
                                ],
                                "key_permissions": [
                                    "Get",
                                    "List"
                                ],
                                "secret_permissions": [
                                    "Get",
                                    "List"
                                ],
                                "storage_permissions": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                            }
                        ],
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": true,
                        "enabled_for_template_deployment": null,
                        "location": "westus2",
                        "name": "magedataprepkeyvault",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "mage-data-prep-production",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_profile.containergroup_profile",
                    "mode": "managed",
                    "name": "containergroup_profile",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "container_network_interface": [
                            {
                                "ip_configuration": [
                                    {}
                                ]
                            }
                        ],
                        "container_network_interface_ids": []
                    },
                    "type": "azurerm_network_profile",
                    "values": {
                        "container_network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "name": "aciipconfig"
                                    }
                                ],
                                "name": "mage-data-prep-production-nic"
                            }
                        ],
                        "location": "westus2",
                        "name": "mage-data-prep-production-profile",
                        "resource_group_name": "mage-data-prep-production",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.nsg-aci",
                    "mode": "managed",
                    "name": "nsg-aci",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": [
                            {
                                "destination_address_prefixes": [
                                    false
                                ],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
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
                        "location": "westus2",
                        "name": "mage-data-prep-production-nsg-aci",
                        "resource_group_name": "mage-data-prep-production",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "",
                                "destination_address_prefixes": [
                                    "10.0.10.0/24"
                                ],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "22",
                                    "443",
                                    "445",
                                    "6789",
                                    "8000"
                                ],
                                "direction": "Inbound",
                                "name": "from-gateway-subnet",
                                "priority": 100,
                                "protocol": "Tcp",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "10.0.20.0/24"
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "*",
                                "destination_port_ranges": [],
                                "direction": "Outbound",
                                "name": "to-internet",
                                "priority": 100,
                                "protocol": "Tcp",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Deny",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "*",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "DenyAllInBound-Override",
                                "priority": 900,
                                "protocol": "*",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Deny",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "*",
                                "destination_port_ranges": [],
                                "direction": "Outbound",
                                "name": "DenyAllOutBound-Override",
                                "priority": 900,
                                "protocol": "*",
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
                    "address": "azurerm_network_security_group.nsg-public",
                    "mode": "managed",
                    "name": "nsg-public",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": [
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
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
                        "location": "westus2",
                        "name": "mage-data-prep-production-nsg-public",
                        "resource_group_name": "mage-data-prep-production",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "80"
                                ],
                                "direction": "Inbound",
                                "name": "whitelist-inbound-ip",
                                "priority": 100,
                                "protocol": "Tcp",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "128.42.61.9/32"
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "65200-65535",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "AllowInfraComms",
                                "priority": 200,
                                "protocol": "Tcp",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Deny",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "*",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "DenyAllInBound-Override",
                                "priority": 900,
                                "protocol": "*",
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
                    "address": "azurerm_public_ip.public_ip",
                    "mode": "managed",
                    "name": "public_ip",
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
                        "name": "mage-data-prep-production-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "mage-data-prep-production",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.resource_group",
                    "mode": "managed",
                    "name": "resource_group",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westus2",
                        "managed_by": null,
                        "name": "mage-data-prep-production",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.custom_role",
                    "mode": "managed",
                    "name": "custom_role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.storage",
                    "mode": "managed",
                    "name": "storage",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Storage Blob Data Reader",
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_definition.custom_role",
                    "mode": "managed",
                    "name": "custom_role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "assignable_scopes": [
                            false
                        ],
                        "permissions": [
                            {
                                "actions": [
                                    false,
                                    false,
                                    false
                                ],
                                "not_actions": []
                            }
                        ]
                    },
                    "type": "azurerm_role_definition",
                    "values": {
                        "assignable_scopes": [
                            "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                        ],
                        "description": null,
                        "name": "mage-data-prep-custom-role",
                        "permissions": [
                            {
                                "actions": [
                                    "Microsoft.ContainerInstance/containerGroups/read",
                                    "Microsoft.ContainerInstance/containerGroups/write",
                                    "Microsoft.ContainerInstance/containerGroups/delete"
                                ],
                                "data_actions": null,
                                "not_actions": [],
                                "not_data_actions": null
                            }
                        ],
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_account.aci_storage",
                    "mode": "managed",
                    "name": "aci_storage",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 4,
                    "sensitive_values": {
                        "azure_files_authentication": [],
                        "blob_properties": [],
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "identity": [],
                        "immutability_policy": [],
                        "network_rules": [],
                        "primary_access_key": true,
                        "primary_blob_connection_string": true,
                        "primary_connection_string": true,
                        "queue_properties": [],
                        "routing": [],
                        "sas_policy": [],
                        "secondary_access_key": true,
                        "secondary_blob_connection_string": true,
                        "secondary_connection_string": true,
                        "share_properties": [],
                        "static_website": []
                    },
                    "type": "azurerm_storage_account",
                    "values": {
                        "account_kind": "StorageV2",
                        "account_replication_type": "LRS",
                        "account_tier": "Standard",
                        "allow_nested_items_to_be_public": true,
                        "allowed_copy_scope": null,
                        "azure_files_authentication": [],
                        "cross_tenant_replication_enabled": true,
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "default_to_oauth_authentication": false,
                        "dns_endpoint_type": "Standard",
                        "edge_zone": null,
                        "identity": [],
                        "immutability_policy": [],
                        "infrastructure_encryption_enabled": false,
                        "is_hns_enabled": false,
                        "local_user_enabled": true,
                        "location": "westus2",
                        "min_tls_version": "TLS1_2",
                        "name": "magedataprepstorage",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "mage-data-prep-production",
                        "sas_policy": [],
                        "sftp_enabled": false,
                        "shared_access_key_enabled": true,
                        "static_website": [],
                        "table_encryption_key_type": "Service",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_share.container_share",
                    "mode": "managed",
                    "name": "container_share",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "acl": [],
                        "metadata": {}
                    },
                    "type": "azurerm_storage_share",
                    "values": {
                        "acl": [],
                        "enabled_protocol": "SMB",
                        "name": "mage-data-prep-production-data",
                        "quota": 100,
                        "storage_account_name": "magedataprepstorage",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.sn-aci",
                    "mode": "managed",
                    "name": "sn-aci",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": [
                            {
                                "service_delegation": [
                                    {
                                        "actions": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "service_endpoints": [
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.10.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [
                            {
                                "name": "acidelegationservice",
                                "service_delegation": [
                                    {
                                        "actions": [
                                            "Microsoft.Network/virtualNetworks/subnets/action"
                                        ],
                                        "name": "Microsoft.ContainerInstance/containerGroups"
                                    }
                                ]
                            }
                        ],
                        "name": "aci",
                        "resource_group_name": "mage-data-prep-production",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": [
                            "Microsoft.KeyVault",
                            "Microsoft.Storage"
                        ],
                        "timeouts": null,
                        "virtual_network_name": "mage-data-prep-production"
                    }
                },
                {
                    "address": "azurerm_subnet.sn-public",
                    "mode": "managed",
                    "name": "sn-public",
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
                            "10.0.20.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "public",
                        "resource_group_name": "mage-data-prep-production",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "mage-data-prep-production"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
                    "mode": "managed",
                    "name": "sn-nsg-aci",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
                    "mode": "managed",
                    "name": "sn-nsg-public",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.virtual_network",
                    "mode": "managed",
                    "name": "virtual_network",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_space": [
                            false
                        ],
                        "ddos_protection_plan": [],
                        "dns_servers": [
                            false,
                            false
                        ],
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
                        "dns_servers": [
                            "10.0.0.4",
                            "10.0.0.5"
                        ],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westus2",
                        "name": "mage-data-prep-production",
                        "resource_group_name": "mage-data-prep-production",
                        "tags": {
                            "Environment": "production"
                        },
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
                "resources": [
                    {
                        "address": "data.azuread_client_config.current",
                        "mode": "data",
                        "name": "current",
                        "provider_name": "registry.terraform.io/hashicorp/azuread",
                        "schema_version": 0,
                        "sensitive_values": {},
                        "type": "azuread_client_config",
                        "values": {
                            "client_id": "04b07795-8ddb-461a-bbee-02f9e1bf7b46",
                            "id": "e66e77b4-5724-44d7-8721-06df160450ce-04b07795-8ddb-461a-bbee-02f9e1bf7b46-62e5370a-2bf4-4734-8511-cc798825f062",
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                            "timeouts": null
                        }
                    },
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
                        "address": "data.azurerm_subscription.current",
                        "mode": "data",
                        "name": "current",
                        "provider_name": "registry.terraform.io/hashicorp/azurerm",
                        "schema_version": 0,
                        "sensitive_values": {
                            "tags": {}
                        },
                        "type": "azurerm_subscription",
                        "values": {
                            "display_name": "UM-Campus-secure-systems-01",
                            "id": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                            "location_placement_id": "Public_2014-09-01",
                            "quota_id": "EnterpriseAgreement_2014-09-01",
                            "spending_limit": "Off",
                            "state": "Enabled",
                            "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                            "tags": {},
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                            "timeouts": null
                        }
                    },
                    {
                        "address": "data.http.myip",
                        "mode": "data",
                        "name": "myip",
                        "provider_name": "registry.terraform.io/hashicorp/http",
                        "schema_version": 0,
                        "sensitive_values": {
                            "response_headers": {}
                        },
                        "type": "http",
                        "values": {
                            "body": "128.42.61.9\n",
                            "ca_cert_pem": null,
                            "id": "http://ipv4.icanhazip.com",
                            "insecure": null,
                            "method": null,
                            "request_body": null,
                            "request_headers": null,
                            "request_timeout_ms": null,
                            "response_body": "128.42.61.9\n",
                            "response_body_base64": "MTI4LjQyLjYxLjkK",
                            "response_headers": {
                                "Access-Control-Allow-Methods": "GET",
                                "Access-Control-Allow-Origin": "*",
                                "Alt-Svc": "h3=\":443\"; ma=86400",
                                "Cf-Ray": "8b76f55a7e5c0c0f-DFW",
                                "Connection": "keep-alive",
                                "Content-Length": "12",
                                "Content-Type": "text/plain",
                                "Date": "Fri, 23 Aug 2024 00:24:13 GMT",
                                "Server": "cloudflare",
                                "Set-Cookie": "__cf_bm=gd8KoqZq1LQJhORfYORysidacUIAVgMpQFjzege3ae0-1724372653-1.0.1.1-ezxGh.PLdWmCWyNOKug50N6gyHcZDKNBNhfiVbgY5h7zb9.6E69HIjM8FHpP6W6SdB9RwwXWKH9p7h1aQ60mjg; path=/; expires=Fri, 23-Aug-24 00:54:13 GMT; domain=.icanhazip.com; HttpOnly",
                                "Vary": "Accept-Encoding"
                            },
                            "retry": null,
                            "status_code": 200,
                            "url": "http://ipv4.icanhazip.com"
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
            "resource": "azuread_service_principal.app"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.sn-public"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_storage_account.aci_storage"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_storage_share.container_share"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "address_prefixes"
            ],
            "resource": "azurerm_subnet.sn-public"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "data.azurerm_subscription.current"
        },
        {
            "attribute": [
                "primary_access_key"
            ],
            "resource": "azurerm_storage_account.aci_storage"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-public"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.sn-aci"
        },
        {
            "attribute": [
                "role_definition_resource_id"
            ],
            "resource": "azurerm_role_definition.custom_role"
        },
        {
            "attribute": [
                "subscription_id"
            ],
            "resource": "data.azurerm_subscription.current"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_container_group.container_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-aci"
        },
        {
            "attribute": [
                "application_id"
            ],
            "resource": "azuread_service_principal.app"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "value"
            ],
            "resource": "azuread_service_principal_password.app"
        },
        {
            "attribute": [
                "application_tenant_id"
            ],
            "resource": "azuread_service_principal.app"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "application_id"
            ],
            "resource": "azuread_application.app"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azuread_client_config.current"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "response_body"
            ],
            "resource": "data.http.myip"
        },
        {
            "attribute": [
                "address_prefixes"
            ],
            "resource": "azurerm_subnet.sn-aci"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_container_group.container_group"
        }
    ],
    "resource_changes": [
        {
            "address": "azuread_application.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "api": [],
                    "app_role": [],
                    "description": null,
                    "device_only_auth_enabled": null,
                    "display_name": "mage-data-prep-app",
                    "fallback_public_client_enabled": null,
                    "group_membership_claims": null,
                    "identifier_uris": null,
                    "logo_image": null,
                    "marketing_url": null,
                    "notes": null,
                    "oauth2_post_response_required": null,
                    "optional_claims": [],
                    "owners": [
                        "62e5370a-2bf4-4734-8511-cc798825f062"
                    ],
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
                    "owners": [
                        false
                    ],
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
                    "owners": [
                        false
                    ],
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
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_application"
        },
        {
            "address": "azuread_service_principal.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_enabled": true,
                    "alternative_names": null,
                    "app_role_assignment_required": false,
                    "description": null,
                    "login_url": null,
                    "notes": null,
                    "notification_email_addresses": null,
                    "owners": [
                        "62e5370a-2bf4-4734-8511-cc798825f062"
                    ],
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
                    "owners": [
                        false
                    ],
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
                    "owners": [
                        false
                    ],
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
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_service_principal"
        },
        {
            "address": "azuread_service_principal_password.app",
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
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "type": "azuread_service_principal_password"
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
                            "fqdns": [],
                            "name": "mage-data-prep-production-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "mage-data-prep-production-http-setting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 6789,
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
                            "name": "mage-data-prep-production-frontend-ip-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "mage-data-prep-production-frontend-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "mage-data-prep-production-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "mage-data-prep-production-frontend-ip-config",
                            "frontend_port_name": "mage-data-prep-production-frontend-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "mage-data-prep-production-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus2",
                    "name": "mage-data-prep-production-app-gateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "mage-data-prep-production-backend-pool",
                            "backend_http_settings_name": "mage-data-prep-production-http-setting",
                            "http_listener_name": "mage-data-prep-production-listener",
                            "name": "mage-data-prep-production-routing-rule",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "mage-data-prep-production",
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
                            "ip_addresses": true
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
            "name": "network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_container_group.container_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container": [
                        {
                            "cpu": 2,
                            "cpu_limit": null,
                            "gpu": [],
                            "gpu_limit": [],
                            "image": "mageai/mageai:latest",
                            "liveness_probe": [],
                            "memory": 2,
                            "memory_limit": null,
                            "name": "mage-data-prep-production-container",
                            "ports": [
                                {
                                    "port": 6789,
                                    "protocol": "TCP"
                                }
                            ],
                            "readiness_probe": [],
                            "secure_environment_variables": null,
                            "security": [],
                            "volume": [
                                {
                                    "empty_dir": false,
                                    "git_repo": [],
                                    "mount_path": "/home/src",
                                    "name": "mage-data-prep-fs",
                                    "read_only": false,
                                    "secret": null,
                                    "share_name": "mage-data-prep-production-data",
                                    "storage_account_name": "magedataprepstorage"
                                }
                            ]
                        }
                    ],
                    "diagnostics": [],
                    "dns_config": [],
                    "dns_name_label": null,
                    "dns_name_label_reuse_policy": "Unsecure",
                    "identity": [],
                    "image_registry_credential": [],
                    "init_container": [],
                    "ip_address_type": "Private",
                    "key_vault_key_id": null,
                    "key_vault_user_assigned_identity_id": null,
                    "location": "westus2",
                    "name": "mage-data-prep-production",
                    "os_type": "Linux",
                    "priority": null,
                    "resource_group_name": "mage-data-prep-production",
                    "restart_policy": "Always",
                    "sku": "Standard",
                    "tags": {
                        "Environment": "production"
                    },
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {
                    "container": [
                        {
                            "commands": [],
                            "environment_variables": {},
                            "gpu": [],
                            "gpu_limit": [],
                            "liveness_probe": [],
                            "ports": [
                                {}
                            ],
                            "readiness_probe": [],
                            "secure_environment_variables": true,
                            "security": [],
                            "volume": [
                                {
                                    "git_repo": [],
                                    "secret": true,
                                    "storage_account_key": true
                                }
                            ]
                        }
                    ],
                    "diagnostics": [],
                    "dns_config": [],
                    "exposed_port": [],
                    "identity": [],
                    "image_registry_credential": [],
                    "init_container": [],
                    "subnet_ids": [],
                    "tags": {}
                },
                "after_unknown": {
                    "container": [
                        {
                            "commands": true,
                            "environment_variables": true,
                            "gpu": [],
                            "gpu_limit": [],
                            "liveness_probe": [],
                            "ports": [
                                {}
                            ],
                            "readiness_probe": [],
                            "security": [],
                            "volume": [
                                {
                                    "git_repo": [],
                                    "storage_account_key": true
                                }
                            ]
                        }
                    ],
                    "diagnostics": [],
                    "dns_config": [],
                    "exposed_port": true,
                    "fqdn": true,
                    "id": true,
                    "identity": [],
                    "image_registry_credential": [],
                    "init_container": [],
                    "ip_address": true,
                    "network_profile_id": true,
                    "subnet_ids": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "container_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_group"
        },
        {
            "address": "azurerm_key_vault.kv",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get",
                                "List"
                            ],
                            "key_permissions": [
                                "Get",
                                "List"
                            ],
                            "secret_permissions": [
                                "Get",
                                "List"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "westus2",
                    "name": "magedataprepkeyvault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "mage-data-prep-production",
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
                                false,
                                false
                            ],
                            "key_permissions": [
                                false,
                                false
                            ],
                            "secret_permissions": [
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
                                false,
                                false
                            ],
                            "key_permissions": [
                                false,
                                false
                            ],
                            "object_id": true,
                            "secret_permissions": [
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
            "name": "kv",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_network_profile.containergroup_profile",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "name": "aciipconfig"
                                }
                            ],
                            "name": "mage-data-prep-production-nic"
                        }
                    ],
                    "location": "westus2",
                    "name": "mage-data-prep-production-profile",
                    "resource_group_name": "mage-data-prep-production",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "container_network_interface": [
                        {
                            "ip_configuration": [
                                {}
                            ]
                        }
                    ],
                    "container_network_interface_ids": []
                },
                "after_unknown": {
                    "container_network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "subnet_id": true
                                }
                            ]
                        }
                    ],
                    "container_network_interface_ids": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "containergroup_profile",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_profile"
        },
        {
            "address": "azurerm_network_security_group.nsg-aci",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "name": "mage-data-prep-production-nsg-aci",
                    "resource_group_name": "mage-data-prep-production",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "",
                            "destination_address_prefixes": [
                                "10.0.10.0/24"
                            ],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "22",
                                "443",
                                "445",
                                "6789",
                                "8000"
                            ],
                            "direction": "Inbound",
                            "name": "from-gateway-subnet",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "10.0.20.0/24"
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "*",
                            "destination_port_ranges": [],
                            "direction": "Outbound",
                            "name": "to-internet",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Deny",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "*",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "DenyAllInBound-Override",
                            "priority": 900,
                            "protocol": "*",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Deny",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "*",
                            "destination_port_ranges": [],
                            "direction": "Outbound",
                            "name": "DenyAllOutBound-Override",
                            "priority": 900,
                            "protocol": "*",
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
                            "destination_address_prefixes": [
                                false
                            ],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
                            "destination_address_prefixes": [
                                false
                            ],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
            "name": "nsg-aci",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.nsg-public",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "name": "mage-data-prep-production-nsg-public",
                    "resource_group_name": "mage-data-prep-production",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "80"
                            ],
                            "direction": "Inbound",
                            "name": "whitelist-inbound-ip",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "128.42.61.9/32"
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "65200-65535",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "AllowInfraComms",
                            "priority": 200,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Deny",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "*",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "DenyAllInBound-Override",
                            "priority": 900,
                            "protocol": "*",
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
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
            "name": "nsg-public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
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
                    "location": "westus2",
                    "name": "mage-data-prep-production-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "mage-data-prep-production",
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
            "name": "public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.resource_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "managed_by": null,
                    "name": "mage-data-prep-production",
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
            "name": "resource_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.custom_role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "role_definition_name": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "custom_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.storage",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Storage Blob Data Reader",
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
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
            "name": "storage",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_definition.custom_role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "assignable_scopes": [
                        "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                    ],
                    "description": null,
                    "name": "mage-data-prep-custom-role",
                    "permissions": [
                        {
                            "actions": [
                                "Microsoft.ContainerInstance/containerGroups/read",
                                "Microsoft.ContainerInstance/containerGroups/write",
                                "Microsoft.ContainerInstance/containerGroups/delete"
                            ],
                            "data_actions": null,
                            "not_actions": [],
                            "not_data_actions": null
                        }
                    ],
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                    "timeouts": null
                },
                "after_sensitive": {
                    "assignable_scopes": [
                        false
                    ],
                    "permissions": [
                        {
                            "actions": [
                                false,
                                false,
                                false
                            ],
                            "not_actions": []
                        }
                    ]
                },
                "after_unknown": {
                    "assignable_scopes": [
                        false
                    ],
                    "id": true,
                    "permissions": [
                        {
                            "actions": [
                                false,
                                false,
                                false
                            ],
                            "not_actions": []
                        }
                    ],
                    "role_definition_id": true,
                    "role_definition_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "custom_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_definition"
        },
        {
            "address": "azurerm_storage_account.aci_storage",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_kind": "StorageV2",
                    "account_replication_type": "LRS",
                    "account_tier": "Standard",
                    "allow_nested_items_to_be_public": true,
                    "allowed_copy_scope": null,
                    "azure_files_authentication": [],
                    "cross_tenant_replication_enabled": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "default_to_oauth_authentication": false,
                    "dns_endpoint_type": "Standard",
                    "edge_zone": null,
                    "identity": [],
                    "immutability_policy": [],
                    "infrastructure_encryption_enabled": false,
                    "is_hns_enabled": false,
                    "local_user_enabled": true,
                    "location": "westus2",
                    "min_tls_version": "TLS1_2",
                    "name": "magedataprepstorage",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "mage-data-prep-production",
                    "sas_policy": [],
                    "sftp_enabled": false,
                    "shared_access_key_enabled": true,
                    "static_website": [],
                    "table_encryption_key_type": "Service",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "azure_files_authentication": [],
                    "blob_properties": [],
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "identity": [],
                    "immutability_policy": [],
                    "network_rules": [],
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_connection_string": true,
                    "queue_properties": [],
                    "routing": [],
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_connection_string": true,
                    "share_properties": [],
                    "static_website": []
                },
                "after_unknown": {
                    "access_tier": true,
                    "azure_files_authentication": [],
                    "blob_properties": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "enable_https_traffic_only": true,
                    "https_traffic_only_enabled": true,
                    "id": true,
                    "identity": [],
                    "immutability_policy": [],
                    "large_file_share_enabled": true,
                    "network_rules": true,
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_blob_endpoint": true,
                    "primary_blob_host": true,
                    "primary_blob_internet_endpoint": true,
                    "primary_blob_internet_host": true,
                    "primary_blob_microsoft_endpoint": true,
                    "primary_blob_microsoft_host": true,
                    "primary_connection_string": true,
                    "primary_dfs_endpoint": true,
                    "primary_dfs_host": true,
                    "primary_dfs_internet_endpoint": true,
                    "primary_dfs_internet_host": true,
                    "primary_dfs_microsoft_endpoint": true,
                    "primary_dfs_microsoft_host": true,
                    "primary_file_endpoint": true,
                    "primary_file_host": true,
                    "primary_file_internet_endpoint": true,
                    "primary_file_internet_host": true,
                    "primary_file_microsoft_endpoint": true,
                    "primary_file_microsoft_host": true,
                    "primary_location": true,
                    "primary_queue_endpoint": true,
                    "primary_queue_host": true,
                    "primary_queue_microsoft_endpoint": true,
                    "primary_queue_microsoft_host": true,
                    "primary_table_endpoint": true,
                    "primary_table_host": true,
                    "primary_table_microsoft_endpoint": true,
                    "primary_table_microsoft_host": true,
                    "primary_web_endpoint": true,
                    "primary_web_host": true,
                    "primary_web_internet_endpoint": true,
                    "primary_web_internet_host": true,
                    "primary_web_microsoft_endpoint": true,
                    "primary_web_microsoft_host": true,
                    "queue_properties": true,
                    "routing": true,
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_blob_endpoint": true,
                    "secondary_blob_host": true,
                    "secondary_blob_internet_endpoint": true,
                    "secondary_blob_internet_host": true,
                    "secondary_blob_microsoft_endpoint": true,
                    "secondary_blob_microsoft_host": true,
                    "secondary_connection_string": true,
                    "secondary_dfs_endpoint": true,
                    "secondary_dfs_host": true,
                    "secondary_dfs_internet_endpoint": true,
                    "secondary_dfs_internet_host": true,
                    "secondary_dfs_microsoft_endpoint": true,
                    "secondary_dfs_microsoft_host": true,
                    "secondary_file_endpoint": true,
                    "secondary_file_host": true,
                    "secondary_file_internet_endpoint": true,
                    "secondary_file_internet_host": true,
                    "secondary_file_microsoft_endpoint": true,
                    "secondary_file_microsoft_host": true,
                    "secondary_location": true,
                    "secondary_queue_endpoint": true,
                    "secondary_queue_host": true,
                    "secondary_queue_microsoft_endpoint": true,
                    "secondary_queue_microsoft_host": true,
                    "secondary_table_endpoint": true,
                    "secondary_table_host": true,
                    "secondary_table_microsoft_endpoint": true,
                    "secondary_table_microsoft_host": true,
                    "secondary_web_endpoint": true,
                    "secondary_web_host": true,
                    "secondary_web_internet_endpoint": true,
                    "secondary_web_internet_host": true,
                    "secondary_web_microsoft_endpoint": true,
                    "secondary_web_microsoft_host": true,
                    "share_properties": true,
                    "static_website": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aci_storage",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "azurerm_storage_share.container_share",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "acl": [],
                    "enabled_protocol": "SMB",
                    "name": "mage-data-prep-production-data",
                    "quota": 100,
                    "storage_account_name": "magedataprepstorage",
                    "timeouts": null
                },
                "after_sensitive": {
                    "acl": [],
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "acl": [],
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "container_share",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share"
        },
        {
            "address": "azurerm_subnet.sn-aci",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [
                        {
                            "name": "acidelegationservice",
                            "service_delegation": [
                                {
                                    "actions": [
                                        "Microsoft.Network/virtualNetworks/subnets/action"
                                    ],
                                    "name": "Microsoft.ContainerInstance/containerGroups"
                                }
                            ]
                        }
                    ],
                    "name": "aci",
                    "resource_group_name": "mage-data-prep-production",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": [
                        "Microsoft.KeyVault",
                        "Microsoft.Storage"
                    ],
                    "timeouts": null,
                    "virtual_network_name": "mage-data-prep-production"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [
                        {
                            "service_delegation": [
                                {
                                    "actions": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "service_endpoints": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [
                        {
                            "service_delegation": [
                                {
                                    "actions": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "id": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "service_endpoints": [
                        false,
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "sn-aci",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.sn-public",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.20.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "public",
                    "resource_group_name": "mage-data-prep-production",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "mage-data-prep-production"
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
            "name": "sn-public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
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
            "name": "sn-nsg-aci",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
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
            "name": "sn-nsg-public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_network.virtual_network",
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
                    "dns_servers": [
                        "10.0.0.4",
                        "10.0.0.5"
                    ],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westus2",
                    "name": "mage-data-prep-production",
                    "resource_group_name": "mage-data-prep-production",
                    "tags": {
                        "Environment": "production"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [
                        false,
                        false
                    ],
                    "encryption": [],
                    "subnet": [],
                    "tags": {}
                },
                "after_unknown": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [
                        false,
                        false
                    ],
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
            "name": "virtual_network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:06:22Z",
    "variables": {
        "app_environment": {
            "value": "production"
        },
        "app_name": {
            "value": "mage-data-prep"
        },
        "container_cpu": {
            "value": "2"
        },
        "container_memory": {
            "value": "2"
        },
        "docker_image": {
            "value": "mageai/mageai:latest"
        },
        "key_vault_name": {
            "value": "magedataprepkeyvault"
        },
        "storage_account_name": {
            "value": "magedataprepstorage"
        }
    }
}