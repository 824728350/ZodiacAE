
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
            "helm": {
                "expressions": {
                    "kubernetes": [
                        {
                            "client_certificate": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "client_key": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].client_key",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "cluster_ca_certificate": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "host": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].host",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            }
                        }
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/helm",
                "name": "helm"
            }
        },
        "root_module": {
            "outputs": {
                "appgw_public_ip": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.pip.ip_address",
                            "azurerm_public_ip.pip"
                        ]
                    }
                },
                "role_assignment_id": {
                    "expression": {
                        "references": [
                            "azurerm_role_assignment.aks_appgw_role.id",
                            "azurerm_role_assignment.aks_appgw_role"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "depends_on": [
                        "azurerm_public_ip.pip"
                    ],
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                        "var.prefix"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                                        "var.prefix"
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
                                        "var.prefix"
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
                                        "var.prefix"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appgwsubnet.id",
                                        "azurerm_subnet.appgwsubnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "probe": [
                            {
                                "host": {
                                    "constant_value": "127.0.0.1"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "timeout": {
                                    "constant_value": 20
                                },
                                "unhealthy_threshold": {
                                    "constant_value": 3
                                }
                            }
                        ],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
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
                                    "constant_value": "Standard_v2"
                                },
                                "tier": {
                                    "constant_value": "Standard_v2"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_federated_identity_credential.example",
                    "depends_on": [
                        "azurerm_user_assigned_identity.testIdentity"
                    ],
                    "expressions": {
                        "audience": {
                            "constant_value": [
                                "api://AzureADTokenExchange"
                            ]
                        },
                        "issuer": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.oidc_issuer_url",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "parent_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "subject": {
                            "constant_value": "system:serviceaccount:default:ingress-azure"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_federated_identity_credential"
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "default"
                                },
                                "node_count": {
                                    "constant_value": 1
                                },
                                "vm_size": {
                                    "constant_value": "Standard_D4ps_v5"
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
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
                                "var.prefix"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "constant_value": "10.0.1.10"
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "service_cidr": {
                                    "references": [
                                        "azurerm_subnet.akssubnet.address_prefixes[0]",
                                        "azurerm_subnet.akssubnet.address_prefixes",
                                        "azurerm_subnet.akssubnet"
                                    ]
                                }
                            }
                        ],
                        "oidc_issuer_enabled": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "workload_identity_enabled": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "depends_on": [
                        "azurerm_resource_group.rg"
                    ],
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
                            "references": [
                                "var.prefix"
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
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
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
                            "constant_value": "westus2"
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
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
                    "address": "azurerm_role_assignment.aks_appgw_role",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_application_gateway.appgw.id",
                                "azurerm_application_gateway.appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_appgw_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.ra1",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ra1",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.ra3",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_resource_group.rg.id",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ra3",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.akssubnet",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
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
                    "name": "akssubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.appgwsubnet",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
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
                    "name": "appgwsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_user_assigned_identity.testIdentity",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
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
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "testIdentity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
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
                                "var.prefix"
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
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_virtual_network_peering.aks_to_appgw",
                    "depends_on": [
                        "azurerm_application_gateway.appgw"
                    ],
                    "expressions": {
                        "allow_forwarded_traffic": {
                            "constant_value": true
                        },
                        "allow_gateway_transit": {
                            "constant_value": false
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.node_resource_group",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "use_remote_gateways": {
                            "constant_value": false
                        },
                        "virtual_network_name": {
                            "references": [
                                "data.azurerm_resources.vnet.resources[0].name",
                                "data.azurerm_resources.vnet.resources[0]",
                                "data.azurerm_resources.vnet.resources",
                                "data.azurerm_resources.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_to_appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "azurerm_virtual_network_peering.appgw_to_aks",
                    "depends_on": [
                        "azurerm_application_gateway.appgw"
                    ],
                    "expressions": {
                        "allow_forwarded_traffic": {
                            "constant_value": true
                        },
                        "allow_gateway_transit": {
                            "constant_value": false
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "data.azurerm_resources.vnet.resources[0].id",
                                "data.azurerm_resources.vnet.resources[0]",
                                "data.azurerm_resources.vnet.resources",
                                "data.azurerm_resources.vnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "use_remote_gateways": {
                            "constant_value": false
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw_to_aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "helm_release.app",
                    "expressions": {
                        "chart": {
                            "constant_value": "../../k8s/app"
                        },
                        "name": {
                            "constant_value": "app"
                        },
                        "set": [
                            {
                                "name": {
                                    "constant_value": "namespace.name"
                                },
                                "value": {
                                    "references": [
                                        "var.namespace"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "hosts.app"
                                },
                                "value": {
                                    "references": [
                                        "var.host-name"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "replicas.count"
                                },
                                "value": {
                                    "references": [
                                        "var.replicas-count"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "image.repository"
                                },
                                "value": {
                                    "references": [
                                        "var.image_repository"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "image.tag"
                                },
                                "value": {
                                    "references": [
                                        "var.image_tag"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "app",
                    "provider_config_key": "helm",
                    "schema_version": 1,
                    "type": "helm_release"
                },
                {
                    "address": "helm_release.appgw_ingress",
                    "depends_on": [
                        "azurerm_federated_identity_credential.example",
                        "azurerm_kubernetes_cluster.aks"
                    ],
                    "expressions": {
                        "chart": {
                            "constant_value": "ingress-azure"
                        },
                        "create_namespace": {
                            "constant_value": true
                        },
                        "name": {
                            "constant_value": "ingress-azure"
                        },
                        "namespace": {
                            "constant_value": "default"
                        },
                        "repository": {
                            "constant_value": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/"
                        },
                        "timeout": {
                            "constant_value": 125
                        },
                        "values": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg",
                                "azurerm_application_gateway.appgw.name",
                                "azurerm_application_gateway.appgw",
                                "azurerm_user_assigned_identity.testIdentity.client_id",
                                "azurerm_user_assigned_identity.testIdentity",
                                "azurerm_kubernetes_cluster.aks.kube_config[0].host",
                                "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                "azurerm_kubernetes_cluster.aks.kube_config",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw_ingress",
                    "provider_config_key": "helm",
                    "schema_version": 1,
                    "type": "helm_release"
                },
                {
                    "address": "data.azurerm_resources.vnet",
                    "expressions": {
                        "resource_group_name": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.node_resource_group",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.Network/virtualNetworks"
                        }
                    },
                    "mode": "data",
                    "name": "vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resources"
                }
            ],
            "variables": {
                "host-name": {
                    "default": "app.vigregus.com",
                    "description": "host name of the deployment."
                },
                "image_repository": {
                    "default": "nginxdemos/hello",
                    "description": "Docker image repository."
                },
                "image_tag": {
                    "default": "0.4-plain-text",
                    "description": "Docker image tag."
                },
                "location": {
                    "default": "westus2",
                    "description": "The location where resources will be created"
                },
                "namespace": {
                    "default": "example1",
                    "description": "namespace of the deployment."
                },
                "prefix": {
                    "default": "test-mind-io",
                    "description": "Prefix for resource names"
                },
                "replicas-count": {
                    "default": 3,
                    "description": "count of pods"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "appgw_public_ip": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "role_assignment_id": {
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
            "appgw_public_ip": {
                "sensitive": false
            },
            "role_assignment_id": {
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
                        "tags": {},
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
                                "name": "test-mind-io-backend-address-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "test-mind-io-http-settings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "test-mind-io-probe",
                                "protocol": "Http",
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
                                "name": "test-mind-io-frontend-ip-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "test-mind-io-frontend-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "test-mind-io-gateway-ip-config"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "test-mind-io-frontend-ip-config",
                                "frontend_port_name": "test-mind-io-frontend-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "test-mind-io-http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus2",
                        "name": "test-mind-io-app-gateway",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "127.0.0.1",
                                "interval": 30,
                                "match": [],
                                "minimum_servers": 0,
                                "name": "test-mind-io-probe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": 80,
                                "protocol": "Http",
                                "timeout": 20,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "test-mind-io-backend-address-pool",
                                "backend_http_settings_name": "test-mind-io-http-settings",
                                "http_listener_name": "test-mind-io-http-listener",
                                "name": "test-mind-io-routing-rule",
                                "priority": 100,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "test-mind-io-resource-group",
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
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_federated_identity_credential.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "audience": [
                            false
                        ]
                    },
                    "type": "azurerm_federated_identity_credential",
                    "values": {
                        "audience": [
                            "api://AzureADTokenExchange"
                        ],
                        "name": "test-mind-io-federated-identity",
                        "resource_group_name": "test-mind-io-resource-group",
                        "subject": "system:serviceaccount:default:ingress-azure",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
                    "mode": "managed",
                    "name": "aks",
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
                        "tags": {},
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
                                "name": "default",
                                "node_count": 1,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
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
                                "vm_size": "Standard_D4ps_v5",
                                "vnet_subnet_id": null,
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "test-mind-io-aks",
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
                        "key_vault_secrets_provider": [],
                        "linux_profile": [],
                        "local_account_disabled": null,
                        "location": "westus2",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "test-mind-io-aks-cluster",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.0.1.10",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.0.1.0/24"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": true,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "test-mind-io-resource-group",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": true
                    }
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
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
                        "location": "westus2",
                        "name": "test-mind-io-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "test-mind-io-resource-group",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "env": "test-mind-io"
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
                        "location": "westus2",
                        "managed_by": null,
                        "name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.aks_appgw_role",
                    "mode": "managed",
                    "name": "aks_appgw_role",
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
                    "address": "azurerm_role_assignment.ra1",
                    "mode": "managed",
                    "name": "ra1",
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
                    "address": "azurerm_role_assignment.ra3",
                    "mode": "managed",
                    "name": "ra3",
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
                    "address": "azurerm_subnet.akssubnet",
                    "mode": "managed",
                    "name": "akssubnet",
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
                        "name": "test-mind-io-aks-subnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.appgwsubnet",
                    "mode": "managed",
                    "name": "appgwsubnet",
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
                            "10.0.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "test-mind-io-appgw-subnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.testIdentity",
                    "mode": "managed",
                    "name": "testIdentity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "westus2",
                        "name": "test-mind-io-identity1",
                        "resource_group_name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null
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
                        "location": "westus2",
                        "name": "test-mind-io-vnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.aks_to_appgw",
                    "mode": "managed",
                    "name": "aks_to_appgw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": true,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "test-mind-io-aks-to-appgw",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.appgw_to_aks",
                    "mode": "managed",
                    "name": "appgw_to_aks",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": true,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "test-mind-io-appgw-to-aks",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "test-mind-io-resource-group",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "data.azurerm_resources.vnet",
                    "mode": "data",
                    "name": "vnet",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "resources": []
                    },
                    "type": "azurerm_resources",
                    "values": {
                        "required_tags": null,
                        "timeouts": null,
                        "type": "Microsoft.Network/virtualNetworks"
                    }
                },
                {
                    "address": "helm_release.app",
                    "mode": "managed",
                    "name": "app",
                    "provider_name": "registry.terraform.io/hashicorp/helm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [],
                        "postrender": [],
                        "repository_password": true,
                        "set": [
                            {},
                            {},
                            {},
                            {},
                            {}
                        ],
                        "set_list": [],
                        "set_sensitive": []
                    },
                    "type": "helm_release",
                    "values": {
                        "atomic": false,
                        "chart": "../../k8s/app",
                        "cleanup_on_fail": false,
                        "create_namespace": false,
                        "dependency_update": false,
                        "description": null,
                        "devel": null,
                        "disable_crd_hooks": false,
                        "disable_openapi_validation": false,
                        "disable_webhooks": false,
                        "force_update": false,
                        "keyring": null,
                        "lint": false,
                        "max_history": 0,
                        "name": "app",
                        "namespace": "default",
                        "pass_credentials": false,
                        "postrender": [],
                        "recreate_pods": false,
                        "render_subchart_notes": true,
                        "replace": false,
                        "repository": null,
                        "repository_ca_file": null,
                        "repository_cert_file": null,
                        "repository_key_file": null,
                        "repository_password": null,
                        "repository_username": null,
                        "reset_values": false,
                        "reuse_values": false,
                        "set": [
                            {
                                "name": "hosts.app",
                                "type": "",
                                "value": "app.vigregus.com"
                            },
                            {
                                "name": "image.repository",
                                "type": "",
                                "value": "nginxdemos/hello"
                            },
                            {
                                "name": "image.tag",
                                "type": "",
                                "value": "0.4-plain-text"
                            },
                            {
                                "name": "namespace.name",
                                "type": "",
                                "value": "example1"
                            },
                            {
                                "name": "replicas.count",
                                "type": "",
                                "value": "3"
                            }
                        ],
                        "set_list": [],
                        "set_sensitive": [],
                        "skip_crds": false,
                        "status": "deployed",
                        "timeout": 300,
                        "upgrade_install": null,
                        "values": null,
                        "verify": false,
                        "version": "0.1.0",
                        "wait": true,
                        "wait_for_jobs": false
                    }
                },
                {
                    "address": "helm_release.appgw_ingress",
                    "mode": "managed",
                    "name": "appgw_ingress",
                    "provider_name": "registry.terraform.io/hashicorp/helm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [],
                        "postrender": [],
                        "repository_password": true,
                        "set": [],
                        "set_list": [],
                        "set_sensitive": [],
                        "values": []
                    },
                    "type": "helm_release",
                    "values": {
                        "atomic": false,
                        "chart": "ingress-azure",
                        "cleanup_on_fail": false,
                        "create_namespace": true,
                        "dependency_update": false,
                        "description": null,
                        "devel": null,
                        "disable_crd_hooks": false,
                        "disable_openapi_validation": false,
                        "disable_webhooks": false,
                        "force_update": false,
                        "keyring": null,
                        "lint": false,
                        "max_history": 0,
                        "name": "ingress-azure",
                        "namespace": "default",
                        "pass_credentials": false,
                        "postrender": [],
                        "recreate_pods": false,
                        "render_subchart_notes": true,
                        "replace": false,
                        "repository": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/",
                        "repository_ca_file": null,
                        "repository_cert_file": null,
                        "repository_key_file": null,
                        "repository_password": null,
                        "repository_username": null,
                        "reset_values": false,
                        "reuse_values": false,
                        "set": [],
                        "set_list": [],
                        "set_sensitive": [],
                        "skip_crds": false,
                        "status": "deployed",
                        "timeout": 125,
                        "upgrade_install": null,
                        "verify": false,
                        "version": "1.7.5",
                        "wait": true,
                        "wait_for_jobs": false
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "oidc_issuer_url"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "resources",
                0,
                "name"
            ],
            "resource": "data.azurerm_resources.vnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "host"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
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
                "id"
            ],
            "resource": "azurerm_subnet.appgwsubnet"
        },
        {
            "attribute": [
                "address_prefixes",
                0
            ],
            "resource": "azurerm_subnet.akssubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "node_resource_group"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
        },
        {
            "attribute": [
                "resources",
                0,
                "id"
            ],
            "resource": "data.azurerm_resources.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_role_assignment.aks_appgw_role"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.vnet"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_resources.vnet",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "required_tags": null,
                    "timeouts": null,
                    "type": "Microsoft.Network/virtualNetworks"
                },
                "after_sensitive": {
                    "resources": []
                },
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "resource_group_name": true,
                    "resources": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resources"
        },
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
                            "name": "test-mind-io-backend-address-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "test-mind-io-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "test-mind-io-probe",
                            "protocol": "Http",
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
                            "name": "test-mind-io-frontend-ip-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "test-mind-io-frontend-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "test-mind-io-gateway-ip-config"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "test-mind-io-frontend-ip-config",
                            "frontend_port_name": "test-mind-io-frontend-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "test-mind-io-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus2",
                    "name": "test-mind-io-app-gateway",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "127.0.0.1",
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "test-mind-io-probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": 80,
                            "protocol": "Http",
                            "timeout": 20,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "test-mind-io-backend-address-pool",
                            "backend_http_settings_name": "test-mind-io-http-settings",
                            "http_listener_name": "test-mind-io-http-listener",
                            "name": "test-mind-io-routing-rule",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "test-mind-io-resource-group",
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
                    "tags": {
                        "env": "test-mind-io"
                    },
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
                    "tags": {},
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
                    "probe": [
                        {
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
                    "tags": {},
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
            "address": "azurerm_federated_identity_credential.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "audience": [
                        "api://AzureADTokenExchange"
                    ],
                    "name": "test-mind-io-federated-identity",
                    "resource_group_name": "test-mind-io-resource-group",
                    "subject": "system:serviceaccount:default:ingress-azure",
                    "timeouts": null
                },
                "after_sensitive": {
                    "audience": [
                        false
                    ]
                },
                "after_unknown": {
                    "audience": [
                        false
                    ],
                    "id": true,
                    "issuer": true,
                    "parent_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_federated_identity_credential"
        },
        {
            "address": "azurerm_kubernetes_cluster.aks",
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
                            "name": "default",
                            "node_count": 1,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
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
                            "vm_size": "Standard_D4ps_v5",
                            "vnet_subnet_id": null,
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "test-mind-io-aks",
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
                    "key_vault_secrets_provider": [],
                    "linux_profile": [],
                    "local_account_disabled": null,
                    "location": "westus2",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "test-mind-io-aks-cluster",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.0.1.10",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.0.1.0/24"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": true,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "test-mind-io-resource-group",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null,
                    "web_app_routing": [],
                    "workload_autoscaler_profile": [],
                    "workload_identity_enabled": true
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
                    "tags": {},
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
                            "os_disk_size_gb": true,
                            "os_sku": true,
                            "upgrade_settings": [],
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
                    "key_vault_secrets_provider": [],
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
                    "tags": {},
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
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
                    "location": "westus2",
                    "name": "test-mind-io-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "test-mind-io-resource-group",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "env": "test-mind-io"
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
                    "location": "westus2",
                    "managed_by": null,
                    "name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
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
            "address": "azurerm_role_assignment.aks_appgw_role",
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
            "name": "aks_appgw_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.ra1",
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
            "mode": "managed",
            "name": "ra1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.ra3",
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
            "name": "ra3",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.akssubnet",
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
                    "name": "test-mind-io-aks-subnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "test-mind-io-vnet"
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
            "name": "akssubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.appgwsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "test-mind-io-appgw-subnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "test-mind-io-vnet"
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
            "name": "appgwsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_user_assigned_identity.testIdentity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "name": "test-mind-io-identity1",
                    "resource_group_name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "principal_id": true,
                    "tags": {},
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "testIdentity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
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
                    "location": "westus2",
                    "name": "test-mind-io-vnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
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
        },
        {
            "address": "azurerm_virtual_network_peering.aks_to_appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": true,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "test-mind-io-aks-to-appgw",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "remote_virtual_network_id": true,
                    "resource_group_name": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks_to_appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "azurerm_virtual_network_peering.appgw_to_aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": true,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "test-mind-io-appgw-to-aks",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "test-mind-io-resource-group",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "test-mind-io-vnet"
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
            "name": "appgw_to_aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "helm_release.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "atomic": false,
                    "chart": "../../k8s/app",
                    "cleanup_on_fail": false,
                    "create_namespace": false,
                    "dependency_update": false,
                    "description": null,
                    "devel": null,
                    "disable_crd_hooks": false,
                    "disable_openapi_validation": false,
                    "disable_webhooks": false,
                    "force_update": false,
                    "keyring": null,
                    "lint": false,
                    "max_history": 0,
                    "name": "app",
                    "namespace": "default",
                    "pass_credentials": false,
                    "postrender": [],
                    "recreate_pods": false,
                    "render_subchart_notes": true,
                    "replace": false,
                    "repository": null,
                    "repository_ca_file": null,
                    "repository_cert_file": null,
                    "repository_key_file": null,
                    "repository_password": null,
                    "repository_username": null,
                    "reset_values": false,
                    "reuse_values": false,
                    "set": [
                        {
                            "name": "hosts.app",
                            "type": "",
                            "value": "app.vigregus.com"
                        },
                        {
                            "name": "image.repository",
                            "type": "",
                            "value": "nginxdemos/hello"
                        },
                        {
                            "name": "image.tag",
                            "type": "",
                            "value": "0.4-plain-text"
                        },
                        {
                            "name": "namespace.name",
                            "type": "",
                            "value": "example1"
                        },
                        {
                            "name": "replicas.count",
                            "type": "",
                            "value": "3"
                        }
                    ],
                    "set_list": [],
                    "set_sensitive": [],
                    "skip_crds": false,
                    "status": "deployed",
                    "timeout": 300,
                    "upgrade_install": null,
                    "values": null,
                    "verify": false,
                    "version": "0.1.0",
                    "wait": true,
                    "wait_for_jobs": false
                },
                "after_sensitive": {
                    "metadata": [],
                    "postrender": [],
                    "repository_password": true,
                    "set": [
                        {},
                        {},
                        {},
                        {},
                        {}
                    ],
                    "set_list": [],
                    "set_sensitive": []
                },
                "after_unknown": {
                    "id": true,
                    "manifest": true,
                    "metadata": true,
                    "postrender": [],
                    "set": [
                        {},
                        {},
                        {},
                        {},
                        {}
                    ],
                    "set_list": [],
                    "set_sensitive": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/helm",
            "type": "helm_release"
        },
        {
            "address": "helm_release.appgw_ingress",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "atomic": false,
                    "chart": "ingress-azure",
                    "cleanup_on_fail": false,
                    "create_namespace": true,
                    "dependency_update": false,
                    "description": null,
                    "devel": null,
                    "disable_crd_hooks": false,
                    "disable_openapi_validation": false,
                    "disable_webhooks": false,
                    "force_update": false,
                    "keyring": null,
                    "lint": false,
                    "max_history": 0,
                    "name": "ingress-azure",
                    "namespace": "default",
                    "pass_credentials": false,
                    "postrender": [],
                    "recreate_pods": false,
                    "render_subchart_notes": true,
                    "replace": false,
                    "repository": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/",
                    "repository_ca_file": null,
                    "repository_cert_file": null,
                    "repository_key_file": null,
                    "repository_password": null,
                    "repository_username": null,
                    "reset_values": false,
                    "reuse_values": false,
                    "set": [],
                    "set_list": [],
                    "set_sensitive": [],
                    "skip_crds": false,
                    "status": "deployed",
                    "timeout": 125,
                    "upgrade_install": null,
                    "verify": false,
                    "version": "1.7.5",
                    "wait": true,
                    "wait_for_jobs": false
                },
                "after_sensitive": {
                    "metadata": [],
                    "postrender": [],
                    "repository_password": true,
                    "set": [],
                    "set_list": [],
                    "set_sensitive": [],
                    "values": []
                },
                "after_unknown": {
                    "id": true,
                    "manifest": true,
                    "metadata": true,
                    "postrender": [],
                    "set": [],
                    "set_list": [],
                    "set_sensitive": [],
                    "values": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw_ingress",
            "provider_name": "registry.terraform.io/hashicorp/helm",
            "type": "helm_release"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:11:36Z",
    "variables": {
        "host-name": {
            "value": "app.vigregus.com"
        },
        "image_repository": {
            "value": "nginxdemos/hello"
        },
        "image_tag": {
            "value": "0.4-plain-text"
        },
        "location": {
            "value": "westus2"
        },
        "namespace": {
            "value": "example1"
        },
        "prefix": {
            "value": "test-mind-io"
        },
        "replicas-count": {
            "value": 3
        }
    }
}