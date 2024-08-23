
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
    "checks": [
        {
            "address": {
                "kind": "var",
                "module": "module.bootstrap",
                "name": "storage_account_name",
                "to_display": "module.bootstrap.var.storage_account_name"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.bootstrap",
                        "to_display": "module.bootstrap.var.storage_account_name"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.bootstrap",
                "name": "storage_share_name",
                "to_display": "module.bootstrap.var.storage_share_name"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.bootstrap",
                        "to_display": "module.bootstrap.var.storage_share_name"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "var",
                "name": "allow_inbound_mgmt_ips",
                "to_display": "var.allow_inbound_mgmt_ips"
            },
            "instances": [
                {
                    "address": {
                        "to_display": "var.allow_inbound_mgmt_ips"
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
                "bootstrap": {
                    "expressions": {
                        "files": {
                            "constant_value": {
                                "templates/bootstrap.xml": "config/bootstrap.xml",
                                "templates/init-cfg.txt": "config/init-cfg.txt"
                            }
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "storage_share_name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "primary_access_key": {
                                "description": "The primary access key for the Azure Storage Account.",
                                "expression": {
                                    "references": [
                                        "local.storage_account.primary_access_key",
                                        "local.storage_account"
                                    ]
                                },
                                "sensitive": true
                            },
                            "storage_account": {
                                "description": "The Azure Storage Account object used for the Bootstrap.",
                                "expression": {
                                    "references": [
                                        "local.storage_account"
                                    ]
                                }
                            },
                            "storage_share": {
                                "description": "The File Share object within Azure Storage used for the Bootstrap.",
                                "expression": {
                                    "references": [
                                        "azurerm_storage_share.this"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_storage_account.this",
                                "count_expression": {
                                    "references": [
                                        "var.create_storage_account"
                                    ]
                                },
                                "expressions": {
                                    "account_replication_type": {
                                        "constant_value": "LRS"
                                    },
                                    "account_tier": {
                                        "constant_value": "Standard"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "min_tls_version": {
                                        "references": [
                                            "var.min_tls_version"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.storage_account_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 4,
                                "type": "azurerm_storage_account"
                            },
                            {
                                "address": "azurerm_storage_share.this",
                                "expressions": {
                                    "access_tier": {
                                        "references": [
                                            "var.storage_share_access_tier"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.storage_share_name"
                                        ]
                                    },
                                    "quota": {
                                        "references": [
                                            "var.storage_share_quota"
                                        ]
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "local.storage_account.name",
                                            "local.storage_account"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_storage_share"
                            },
                            {
                                "address": "azurerm_storage_share_directory.this",
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "each.key"
                                        ]
                                    },
                                    "share_name": {
                                        "references": [
                                            "azurerm_storage_share.this.name",
                                            "azurerm_storage_share.this"
                                        ]
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "local.storage_account.name",
                                            "local.storage_account"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_share_directory"
                            },
                            {
                                "address": "azurerm_storage_share_file.this",
                                "depends_on": [
                                    "azurerm_storage_share_directory.this"
                                ],
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "path": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "source": {
                                        "references": [
                                            "each.key",
                                            "random_id.this",
                                            "each.key",
                                            "random_id.this",
                                            "each.key"
                                        ]
                                    },
                                    "storage_share_id": {
                                        "references": [
                                            "azurerm_storage_share.this.id",
                                            "azurerm_storage_share.this"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.files"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_share_file"
                            },
                            {
                                "address": "random_id.this",
                                "expressions": {
                                    "byte_length": {
                                        "constant_value": 8
                                    },
                                    "keepers": {
                                        "references": [
                                            "var.files_md5",
                                            "each.key",
                                            "each.key"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.files"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "random",
                                "schema_version": 0,
                                "type": "random_id"
                            },
                            {
                                "address": "data.azurerm_storage_account.this",
                                "count_expression": {
                                    "references": [
                                        "var.create_storage_account"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.storage_account_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_account"
                            }
                        ],
                        "variables": {
                            "create_storage_account": {
                                "default": true,
                                "description": "If `true`, create a Storage Account."
                            },
                            "files": {
                                "default": {},
                                "description": "Map of all files to copy to bucket. The keys are local paths, the values are remote paths.\nAlways use slash `/` as directory separator (unix-like), not the backslash `\\`.\nExample: \n```\nfiles = {\n  \"dir/my.txt\" = \"config/init-cfg.txt\"\n}\n```\n"
                            },
                            "files_md5": {
                                "default": {},
                                "description": "Optional map of MD5 hashes of file contents.\nNormally the map could be all empty, because all the files that exist before the `terraform apply` will have their hashes auto-calculated.\nThis input is necessary only for the selected files which are created/modified within the same Terraform run as this module.\nThe keys of the map should be identical with selected keys of the `files` input, while the values should be MD5 hashes of the contents of that file.\n\nExample:\n```\nfiles_md5 = {\n    \"dir/my.txt\" = \"6f7ce3191b50a58cc13e751a8f7ae3fd\"\n}\n```\n"
                            },
                            "location": {
                                "default": null,
                                "description": "Region to deploy bootstrap resources. Ignored when `create_storage_account` is set to `false`."
                            },
                            "min_tls_version": {
                                "default": "TLS1_2",
                                "description": "The minimum supported TLS version for the storage account."
                            },
                            "resource_group_name": {
                                "default": "1weihold",
                                "description": "Name of the Resource Group to use."
                            },
                            "storage_account_name": {
                                "default": "yz9qhold",
                                "description": "Name of the Storage Account, either a new or an existing one (depending on the value of `create_storage_account`).\n\nThe name you choose must be unique across Azure. The name also must be between 3 and 24 characters in length, and may include only numbers and lowercase letters.\n"
                            },
                            "storage_share_access_tier": {
                                "default": "Cool",
                                "description": "Access tier for the File Share."
                            },
                            "storage_share_name": {
                                "default": "nxphhold",
                                "description": "Name of a storage File Share to be created that will hold `files` used for bootstrapping.\nFor rules defining a valid name see [Microsoft documentation](https://docs.microsoft.com/en-us/rest/api/storageservices/Naming-and-Referencing-Shares--Directories--Files--and-Metadata#share-names).\n"
                            },
                            "storage_share_quota": {
                                "default": 50,
                                "description": "Maximum size of a File Share."
                            },
                            "tags": {
                                "default": {},
                                "description": "A map of tags to be associated with the resources created."
                            }
                        }
                    },
                    "source": "./modules/paloalto/bootstrap"
                },
                "paloalto_vmseries": {
                    "depends_on": [
                        "module.bootstrap"
                    ],
                    "expressions": {
                        "bootstrap_options": {
                            "references": [
                                "module.bootstrap.storage_account.name",
                                "module.bootstrap.storage_account",
                                "module.bootstrap",
                                "module.bootstrap.storage_account.primary_access_key",
                                "module.bootstrap.storage_account",
                                "module.bootstrap",
                                "module.bootstrap.storage_share.name",
                                "module.bootstrap.storage_share",
                                "module.bootstrap"
                            ]
                        },
                        "enable_zones": {
                            "references": [
                                "var.enable_zones"
                            ]
                        },
                        "img_sku": {
                            "references": [
                                "var.common_vmseries_sku"
                            ]
                        },
                        "img_version": {
                            "references": [
                                "var.common_vmseries_version"
                            ]
                        },
                        "interfaces": {
                            "references": [
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust"
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
                                "var.firewall_vm_name"
                            ]
                        },
                        "password": {
                            "references": [
                                "var.password"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "username": {
                            "references": [
                                "var.username"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "interfaces": {
                                "description": "List of VM-Series network interfaces. The elements of the list are `azurerm_network_interface` objects. The order is the same as `interfaces` input.",
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.this"
                                    ]
                                }
                            },
                            "metrics_instrumentation_key": {
                                "description": "The Instrumentation Key of the created instance of Azure Application Insights. The instance is unused by default, but is ready to receive custom PAN-OS metrics from the firewalls. To use it, paste this Instrumentation Key into PAN-OS -> Device -> VM-Series -> Azure.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_insights.this[0].instrumentation_key",
                                        "azurerm_application_insights.this[0]",
                                        "azurerm_application_insights.this"
                                    ]
                                },
                                "sensitive": true
                            },
                            "mgmt_ip_address": {
                                "description": "VM-Series management IP address. If `create_public_ip` was `true`, it is a public IP address, otherwise a private IP address.",
                                "expression": {
                                    "references": [
                                        "var.interfaces[0].create_public_ip",
                                        "var.interfaces[0]",
                                        "var.interfaces",
                                        "azurerm_public_ip.this[0].ip_address",
                                        "azurerm_public_ip.this[0]",
                                        "azurerm_public_ip.this",
                                        "azurerm_network_interface.this[0].ip_configuration[0].private_ip_address",
                                        "azurerm_network_interface.this[0].ip_configuration[0]",
                                        "azurerm_network_interface.this[0].ip_configuration",
                                        "azurerm_network_interface.this[0]",
                                        "azurerm_network_interface.this"
                                    ]
                                }
                            },
                            "principal_id": {
                                "description": "The oid of Azure Service Principal of the created VM-Series. Usable only if `identity_type` contains SystemAssigned.",
                                "expression": {
                                    "references": [
                                        "var.identity_type",
                                        "var.identity_type",
                                        "azurerm_virtual_machine.this.identity[0].principal_id",
                                        "azurerm_virtual_machine.this.identity[0]",
                                        "azurerm_virtual_machine.this.identity",
                                        "azurerm_virtual_machine.this"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_insights.this",
                                "count_expression": {
                                    "references": [
                                        "var.metrics_retention_in_days"
                                    ]
                                },
                                "expressions": {
                                    "application_type": {
                                        "constant_value": "other"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name_application_insights",
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
                                            "var.metrics_retention_in_days"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_application_insights"
                            },
                            {
                                "address": "azurerm_network_interface.this",
                                "count_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "expressions": {
                                    "enable_accelerated_networking": {
                                        "references": [
                                            "count.index",
                                            "var.accelerated_networking"
                                        ]
                                    },
                                    "enable_ip_forwarding": {
                                        "references": [
                                            "var.interfaces",
                                            "count.index",
                                            "count.index"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "primary"
                                            },
                                            "private_ip_address": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "private_ip_address_allocation": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.this",
                                                    "count.index",
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
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
                                            "var.interfaces",
                                            "count.index"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.interfaces",
                                            "count.index",
                                            "var.tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface_backend_address_pool_association.this",
                                "expressions": {
                                    "backend_address_pool_id": {
                                        "references": [
                                            "each.value.lb_backend_pool_id",
                                            "each.value"
                                        ]
                                    },
                                    "ip_configuration_name": {
                                        "references": [
                                            "azurerm_network_interface.this",
                                            "each.key"
                                        ]
                                    },
                                    "network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.this",
                                            "each.key"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface_backend_address_pool_association"
                            },
                            {
                                "address": "azurerm_public_ip.this",
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
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tags"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.enable_zones",
                                            "var.avzones"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_virtual_machine.this",
                                "expressions": {
                                    "availability_set_id": {
                                        "references": [
                                            "var.avset_id"
                                        ]
                                    },
                                    "delete_data_disks_on_termination": {
                                        "constant_value": true
                                    },
                                    "delete_os_disk_on_termination": {
                                        "constant_value": true
                                    },
                                    "identity": [
                                        {
                                            "identity_ids": {
                                                "references": [
                                                    "var.identity_ids"
                                                ]
                                            },
                                            "type": {
                                                "references": [
                                                    "var.identity_type"
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
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.this"
                                        ]
                                    },
                                    "os_profile": [
                                        {
                                            "admin_password": {
                                                "references": [
                                                    "var.password"
                                                ]
                                            },
                                            "admin_username": {
                                                "references": [
                                                    "var.username"
                                                ]
                                            },
                                            "computer_name": {
                                                "references": [
                                                    "var.name"
                                                ]
                                            },
                                            "custom_data": {
                                                "references": [
                                                    "var.bootstrap_options"
                                                ]
                                            }
                                        }
                                    ],
                                    "os_profile_linux_config": [
                                        {
                                            "disable_password_authentication": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "primary_network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.this[0].id",
                                            "azurerm_network_interface.this[0]",
                                            "azurerm_network_interface.this"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "storage_image_reference": [
                                        {
                                            "id": {
                                                "references": [
                                                    "var.custom_image_id"
                                                ]
                                            },
                                            "offer": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_offer"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_publisher"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_sku"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_version"
                                                ]
                                            }
                                        }
                                    ],
                                    "storage_os_disk": [
                                        {
                                            "caching": {
                                                "constant_value": "ReadWrite"
                                            },
                                            "create_option": {
                                                "constant_value": "FromImage"
                                            },
                                            "managed_disk_type": {
                                                "references": [
                                                    "var.managed_disk_type"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.os_disk_name",
                                                    "var.name"
                                                ]
                                            },
                                            "os_type": {
                                                "constant_value": "Linux"
                                            }
                                        }
                                    ],
                                    "tags": {
                                        "references": [
                                            "var.tags"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "var.vm_size"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.enable_zones",
                                            "var.avzone",
                                            "var.avzone",
                                            "var.avzone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_machine"
                            }
                        ],
                        "variables": {
                            "accelerated_networking": {
                                "default": true,
                                "description": "Enable Azure accelerated networking (SR-IOV) for all network interfaces except the primary one (it is the PAN-OS management interface, which [does not support](https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-new-features/virtualization-features/support-for-azure-accelerated-networking-sriov) acceleration)."
                            },
                            "avset_id": {
                                "default": null,
                                "description": "The identifier of the Availability Set to use. When using this variable, set `avzone = null`."
                            },
                            "avzone": {
                                "default": "1",
                                "description": "The availability zone to use, for example \"1\", \"2\", \"3\". Ignored if `enable_zones` is false. Conflicts with `avset_id`, in which case use `avzone = null`."
                            },
                            "avzones": {
                                "default": [],
                                "description": "After provider version 3.x you need to specify in which availability zone(s) you want to place IP.\nie: for zone-redundant with 3 availability zone in current region value will be:\n```[\"1\",\"2\",\"3\"]```\n"
                            },
                            "bootstrap_options": {
                                "default": "",
                                "description": "Bootstrap options to pass to VM-Series instance.\n\nProper syntax is a string of semicolon separated properties.\nExample:\n  bootstrap_options = \"type=dhcp-client;panorama-server=1.2.3.4\"\n\nA list of available properties: type, ip-address, default-gateway, netmask, ipv6-address, ipv6-default-gateway, hostname, panorama-server, panorama-server-2, tplname, dgname, dns-primary, dns-secondary, vm-auth-key, op-command-modes, op-cmd-dpdk-pkt-io, plugin-op-commands, dhcp-send-hostname, dhcp-send-client-id, dhcp-accept-server-hostname, dhcp-accept-server-domain, auth-key.\n\nFor more details on bootstrapping see documentation: https://docs.paloaltonetworks.com/vm-series/10-2/vm-series-deployment/bootstrap-the-vm-series-firewall/create-the-init-cfgtxt-file/init-cfgtxt-file-components\n"
                            },
                            "custom_image_id": {
                                "default": null,
                                "description": "Absolute ID of your own Custom Image to be used for creating new VM-Series. If set, the `username`, `password`, `img_version`, `img_publisher`, `img_offer`, `img_sku` inputs are all ignored (these are used only for published images, not custom ones). The Custom Image is expected to contain PAN-OS software."
                            },
                            "diagnostics_storage_uri": {
                                "default": null,
                                "description": "The storage account's blob endpoint to hold diagnostic files."
                            },
                            "enable_plan": {
                                "default": true,
                                "description": "Enable usage of the Offer/Plan on Azure Marketplace. Even plan sku \"byol\", which means \"bring your own license\", still requires accepting on the Marketplace (as of 2021). Can be set to `false` when using a custom image."
                            },
                            "enable_zones": {
                                "default": true,
                                "description": "If false, the input `avzone` is ignored and also all created Public IP addresses default to not to use Availability Zones (the `No-Zone` setting). It is intended for the regions that do not yet support Availability Zones."
                            },
                            "identity_ids": {
                                "default": null,
                                "description": "See the [provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine#identity_ids)."
                            },
                            "identity_type": {
                                "default": "SystemAssigned",
                                "description": "See the [provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine#identity_type)."
                            },
                            "img_offer": {
                                "default": "vmseries-flex",
                                "description": "The Azure Offer identifier corresponding to a published image. For `img_version` 9.1.1 or above, use \"vmseries-flex\"; for 9.1.0 or below use \"vmseries1\"."
                            },
                            "img_publisher": {
                                "default": "paloaltonetworks",
                                "description": "The Azure Publisher identifier for a image which should be deployed."
                            },
                            "img_sku": {
                                "default": "bundle2",
                                "description": "VM-series SKU - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                            },
                            "img_version": {
                                "default": "10.1.0",
                                "description": "VM-series PAN-OS version - list available for a default `img_offer` with `az vm image list -o table --publisher paloaltonetworks --offer vmseries-flex --all`"
                            },
                            "interfaces": {
                                "default": [],
                                "description": "List of the network interface specifications.\nThe first should be the management interface, which does not participate in data filtering.\nThe remaining ones are the dataplane interfaces.\nOptions for an interface object:\n- `name`                 - (required|string) Interface name.\n- `subnet_id`            - (required|string) Identifier of an existing subnet to create interface in.\n- `private_ip_address`   - (optional|string) Static private IP to asssign to the interface. If null, dynamic one is allocated.\n- `public_ip_address_id` - (optional|string) Identifier of an existing public IP to associate.\n- `create_public_ip`     - (optional|bool) If true, create a public IP for the interface and ignore the `public_ip_address_id`. Default is false.\n- `availability_zone`    - (optional|string) Availability zone to create public IP in. If not specified, set based on `avzone` and `enable_zones`.\n- `enable_ip_forwarding` - (optional|bool) If true, the network interface will not discard packets sent to an IP address other than the one assigned. If false, the network interface only accepts traffic destined to its IP address.\n- `enable_backend_pool`  - (optional|bool) If true, associate interface with backend pool specified with `lb_backend_pool_id`. Default is false.\n- `lb_backend_pool_id`   - (optional|string) Identifier of an existing backend pool to associate interface with. Required if `enable_backend_pool` is true.\n- `tags`                 - (optional|map) Tags to assign to the interface and public IP (if created). Overrides contents of `tags` variable.\n\nExample:\n\n```\n[\n  {\n    name                 = \"fw-mgmt\"\n    subnet_id            = azurerm_subnet.my_mgmt_subnet.id\n    public_ip_address_id = azurerm_public_ip.my_mgmt_ip.id\n  },\n  {\n    name                = \"fw-public\"\n    subnet_id           = azurerm_subnet.my_pub_subnet.id\n    lb_backend_pool_id  = module.inbound_lb.backend_pool_id\n    enable_backend_pool = true\n  },\n]\n```\n\n"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Region where to deploy VM-Series and dependencies."
                            },
                            "managed_disk_type": {
                                "default": "StandardSSD_LRS",
                                "description": "Type of OS Managed Disk to create for the virtual machine. Possible values are `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`. The `Premium_LRS` works only for selected `vm_size` values, details in Azure docs."
                            },
                            "metrics_retention_in_days": {
                                "default": null,
                                "description": "Specifies the retention period in days. Possible values are 0, 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90. A special value 0 disables creation of Application Insights altogether."
                            },
                            "name": {
                                "default": "69rfhold",
                                "description": "VM-Series instance name."
                            },
                            "name_application_insights": {
                                "default": null,
                                "description": "Name of the Applications Insights instance to be created. Can be `null`, in which case a default name is auto-generated."
                            },
                            "os_disk_name": {
                                "default": null,
                                "description": "Optional name of the OS disk to create for the virtual machine. If empty, the name is auto-generated."
                            },
                            "password": {
                                "default": "qm45hold",
                                "description": "Initial administrative password to use for VM-Series. Mind the [Azure-imposed restrictions](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/faq#what-are-the-password-requirements-when-creating-a-vm)."
                            },
                            "resource_group_name": {
                                "default": "yc3xhold",
                                "description": "Name of the existing resource group where to place the resources created."
                            },
                            "tags": {
                                "default": {},
                                "description": "A map of tags to be associated with the resources created."
                            },
                            "username": {
                                "default": "8qushold",
                                "description": "Initial administrative username to use for VM-Series. Mind the [Azure-imposed restrictions](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/faq#what-are-the-username-requirements-when-creating-a-vm)."
                            },
                            "vm_size": {
                                "default": "Standard_D3_v2",
                                "description": "Azure VM size (type) to be created. Consult the *VM-Series Deployment Guide* as only a few selected sizes are supported."
                            }
                        }
                    },
                    "source": "./modules/paloalto/vmseries"
                }
            },
            "outputs": {
                "application_ip_address": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.app-gw-pip01.ip_address",
                            "azurerm_public_ip.app-gw-pip01"
                        ]
                    }
                },
                "resource_group_name": {
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
                    "address": "azurerm_application_gateway.application-gateway",
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
                                        "azurerm_public_ip.app-gw-pip01.id",
                                        "azurerm_public_ip.app-gw-pip01"
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
                                    "constant_value": "httpsPort"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-gw-pip01"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.snet-appgw.id",
                                        "azurerm_subnet.snet-appgw"
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
                            "references": [
                                "var.app_gateway_name"
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
                        "rewrite_rule_set": [
                            {
                                "name": {
                                    "constant_value": "add-default-header"
                                },
                                "rewrite_rule": [
                                    {
                                        "name": {
                                            "constant_value": "add-header-MyHeader"
                                        },
                                        "request_header_configuration": [
                                            {
                                                "header_name": {
                                                    "constant_value": "MyHeader"
                                                },
                                                "header_value": {
                                                    "constant_value": "Test"
                                                }
                                            }
                                        ],
                                        "rule_sequence": {
                                            "constant_value": 100
                                        }
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
                                        "var.app_gateway_sku"
                                    ]
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
                        }
                    },
                    "mode": "managed",
                    "name": "application-gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_kubernetes_cluster.k8s",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "agentpool"
                                },
                                "node_count": {
                                    "references": [
                                        "var.aks_agent_count"
                                    ]
                                },
                                "os_disk_size_gb": {
                                    "references": [
                                        "var.aks_agent_os_disk_size"
                                    ]
                                },
                                "vm_size": {
                                    "references": [
                                        "var.aks_agent_vm_size"
                                    ]
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.snet-aks.id",
                                        "azurerm_subnet.snet-aks"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.aks_dns_prefix"
                            ]
                        },
                        "http_application_routing_enabled": {
                            "constant_value": false
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
                                        "azurerm_application_gateway.application-gateway.id",
                                        "azurerm_application_gateway.application-gateway"
                                    ]
                                }
                            }
                        ],
                        "linux_profile": [
                            {
                                "admin_username": {
                                    "references": [
                                        "var.vm_user_name"
                                    ]
                                },
                                "ssh_key": [
                                    {
                                        "key_data": {
                                            "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                        }
                                    }
                                ]
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
                                "var.aks_name"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "references": [
                                        "var.aks_dns_service_ip"
                                    ]
                                },
                                "docker_bridge_cidr": {
                                    "references": [
                                        "var.aks_docker_bridge_cidr"
                                    ]
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "service_cidr": {
                                    "references": [
                                        "var.aks_service_cidr"
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
                        "tags": {
                            "references": [
                                "var.tags"
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
                    "address": "azurerm_network_security_group.nsg-mgmt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "sg-mgmt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.nsg-public",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "sg-public"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                    "address": "azurerm_network_security_rule.mgmt",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "constant_value": "*"
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "vmseries-mgmt-allow-inbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.nsg-mgmt.name",
                                "azurerm_network_security_group.nsg-mgmt"
                            ]
                        },
                        "priority": {
                            "constant_value": 1000
                        },
                        "protocol": {
                            "constant_value": "*"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefixes": {
                            "references": [
                                "var.allow_inbound_mgmt_ips"
                            ]
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_public_ip.app-gw-pip01",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "domain_name_label": {
                            "constant_value": "akscluster"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "app-gw-pip01"
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
                    "name": "app-gw-pip01",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.fw-mgmt",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "domain_name_label": {
                            "references": [
                                "var.firewall_vm_name"
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
                                "var.firewall_vm_name"
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
                    "name": "fw-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.fw-public",
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
                                "var.firewall_vm_name"
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
                    "name": "fw-public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_group_name"
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
                    "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0]",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway",
                                "azurerm_kubernetes_cluster.k8s"
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
                    "name": "aks-agic-id-rg-contrib",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_route.aks-route",
                    "expressions": {
                        "address_prefix": {
                            "references": [
                                "var.virtual_network_address_spoke_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "route-to-aks"
                        },
                        "next_hop_in_ip_address": {
                            "constant_value": "10.100.1.68"
                        },
                        "next_hop_type": {
                            "constant_value": "VirtualAppliance"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "route_table_name": {
                            "references": [
                                "azurerm_route_table.appgw-rt.name",
                                "azurerm_route_table.appgw-rt"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-route",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route"
                },
                {
                    "address": "azurerm_route.appgw-route",
                    "expressions": {
                        "address_prefix": {
                            "references": [
                                "var.virtual_network_address_hub_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "route-to-appgw"
                        },
                        "next_hop_in_ip_address": {
                            "constant_value": "10.100.1.4"
                        },
                        "next_hop_type": {
                            "constant_value": "VirtualAppliance"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "route_table_name": {
                            "references": [
                                "azurerm_route_table.aks-rt.name",
                                "azurerm_route_table.aks-rt"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-route",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route"
                },
                {
                    "address": "azurerm_route_table.aks-rt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "aks-rt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-rt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_route_table.appgw-rt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-rt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-rt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_subnet.snet-aks",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.aks_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.aks_subnet_name"
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
                                "azurerm_virtual_network.spoke.name",
                                "azurerm_virtual_network.spoke"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-appgw",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.app_gateway_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_gateway_subnet_name"
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
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-management",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_management_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-management"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-management",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-trust",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_trust_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-trust"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-trust",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-untrust",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_untrust_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-untrust"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-untrust",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-mgmt.id",
                                "azurerm_network_security_group.nsg-mgmt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "network_security_group_association-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-public.id",
                                "azurerm_network_security_group.nsg-public"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "network_security_group_association_public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.aks-rt-association",
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.aks-rt.id",
                                "azurerm_route_table.aks-rt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-aks.id",
                                "azurerm_subnet.snet-aks"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-rt-association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.appgw-rt-association",
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.appgw-rt.id",
                                "azurerm_route_table.appgw-rt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-appgw.id",
                                "azurerm_subnet.snet-appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-rt-association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_virtual_network.hub",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.virtual_network_address_hub_prefix"
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
                                "var.virtual_network_hub_name"
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
                    "name": "hub",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_virtual_network.spoke",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.virtual_network_address_spoke_prefix"
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
                                "var.virtual_network_spoke_name"
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
                    "name": "spoke",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_virtual_network_peering.hub-to-spoke",
                    "expressions": {
                        "name": {
                            "constant_value": "hub-to-spoke"
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.spoke.id",
                                "azurerm_virtual_network.spoke"
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
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "hub-to-spoke",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "azurerm_virtual_network_peering.spoke-to-hub",
                    "expressions": {
                        "name": {
                            "constant_value": "spoke-to-hub"
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.hub.id",
                                "azurerm_virtual_network.hub"
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
                                "azurerm_virtual_network.spoke.name",
                                "azurerm_virtual_network.spoke"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "spoke-to-hub",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "random_integer.id",
                    "expressions": {
                        "max": {
                            "constant_value": 999
                        },
                        "min": {
                            "constant_value": 100
                        }
                    },
                    "mode": "managed",
                    "name": "id",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_integer"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_account.this",
                    "count_expression": {
                        "references": [
                            "var.create_storage_account"
                        ]
                    },
                    "expressions": {
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Standard"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "min_tls_version": {
                            "references": [
                                "var.min_tls_version"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
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
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share.this",
                    "expressions": {
                        "access_tier": {
                            "references": [
                                "var.storage_share_access_tier"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "quota": {
                            "references": [
                                "var.storage_share_quota"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "local.storage_account.name",
                                "local.storage_account"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_storage_share"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this",
                    "expressions": {
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "share_name": {
                            "references": [
                                "module.bootstrap.azurerm_storage_share.this.name",
                                "module.bootstrap.azurerm_storage_share.this"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "local.storage_account.name",
                                "local.storage_account"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_share_directory"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this",
                    "depends_on": [
                        "module.bootstrap.azurerm_storage_share_directory.this"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "path": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "source": {
                            "references": [
                                "each.key",
                                "module.bootstrap.random_id.this",
                                "each.key",
                                "module.bootstrap.random_id.this",
                                "each.key"
                            ]
                        },
                        "storage_share_id": {
                            "references": [
                                "module.bootstrap.azurerm_storage_share.this.id",
                                "module.bootstrap.azurerm_storage_share.this"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "root.bootstrap.files"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_share_file"
                },
                {
                    "address": "module.bootstrap.random_id.this",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        },
                        "keepers": {
                            "references": [
                                "root.bootstrap.files_md5",
                                "each.key",
                                "each.key"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "root.bootstrap.files"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "module.bootstrap.data.azurerm_storage_account.this",
                    "count_expression": {
                        "references": [
                            "var.create_storage_account"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_application_insights.this",
                    "count_expression": {
                        "references": [
                            "var.metrics_retention_in_days"
                        ]
                    },
                    "expressions": {
                        "application_type": {
                            "constant_value": "other"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.paloalto_vmseries.name_application_insights",
                                "var.firewall_vm_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "retention_in_days": {
                            "references": [
                                "var.metrics_retention_in_days"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this",
                    "count_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "expressions": {
                        "enable_accelerated_networking": {
                            "references": [
                                "count.index",
                                "var.accelerated_networking"
                            ]
                        },
                        "enable_ip_forwarding": {
                            "references": [
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index",
                                "count.index"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "primary"
                                },
                                "private_ip_address": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.paloalto_vmseries.azurerm_public_ip.this",
                                        "count.index",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
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
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index"
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
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index",
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface_backend_address_pool_association.this",
                    "expressions": {
                        "backend_address_pool_id": {
                            "references": [
                                "each.value.lb_backend_pool_id",
                                "each.value"
                            ]
                        },
                        "ip_configuration_name": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this",
                                "each.key"
                            ]
                        },
                        "network_interface_id": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this",
                                "each.key"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_backend_address_pool_association"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_public_ip.this",
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
                                "each.value.name",
                                "each.value"
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
                                "each.value.tags",
                                "each.value",
                                "var.tags"
                            ]
                        },
                        "zones": {
                            "references": [
                                "root.paloalto_vmseries.enable_zones",
                                "var.avzones"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                    "expressions": {
                        "availability_set_id": {
                            "references": [
                                "var.avset_id"
                            ]
                        },
                        "delete_data_disks_on_termination": {
                            "constant_value": true
                        },
                        "delete_os_disk_on_termination": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "var.identity_ids"
                                    ]
                                },
                                "type": {
                                    "references": [
                                        "var.identity_type"
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
                                "var.firewall_vm_name"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this"
                            ]
                        },
                        "os_profile": [
                            {
                                "admin_password": {
                                    "references": [
                                        "root.paloalto_vmseries.password"
                                    ]
                                },
                                "admin_username": {
                                    "references": [
                                        "root.paloalto_vmseries.username"
                                    ]
                                },
                                "computer_name": {
                                    "references": [
                                        "var.firewall_vm_name"
                                    ]
                                },
                                "custom_data": {
                                    "references": [
                                        "module.bootstrap.storage_account.name",
                                        "module.bootstrap.storage_account",
                                        "module.bootstrap",
                                        "module.bootstrap.storage_account.primary_access_key",
                                        "module.bootstrap.storage_account",
                                        "module.bootstrap",
                                        "module.bootstrap.storage_share.name",
                                        "module.bootstrap.storage_share",
                                        "module.bootstrap"
                                    ]
                                }
                            }
                        ],
                        "os_profile_linux_config": [
                            {
                                "disable_password_authentication": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "primary_network_interface_id": {
                            "references": [
                                "azurerm_network_interface.this[0].id",
                                "azurerm_network_interface.this[0]",
                                "module.paloalto_vmseries.azurerm_network_interface.this"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "storage_image_reference": [
                            {
                                "id": {
                                    "references": [
                                        "var.custom_image_id"
                                    ]
                                },
                                "offer": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.img_offer"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.img_publisher"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.common_vmseries_sku"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.common_vmseries_version"
                                    ]
                                }
                            }
                        ],
                        "storage_os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "create_option": {
                                    "constant_value": "FromImage"
                                },
                                "managed_disk_type": {
                                    "references": [
                                        "var.managed_disk_type"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.os_disk_name",
                                        "var.firewall_vm_name"
                                    ]
                                },
                                "os_type": {
                                    "constant_value": "Linux"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "var.vm_size"
                            ]
                        },
                        "zones": {
                            "references": [
                                "root.paloalto_vmseries.enable_zones",
                                "var.avzone",
                                "var.avzone",
                                "var.avzone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_machine"
                }
            ],
            "variables": {
                "aks_agent_count": {
                    "default": 4,
                    "description": "The number of agent nodes for the cluster."
                },
                "aks_agent_os_disk_size": {
                    "default": 40,
                    "description": "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
                },
                "aks_agent_vm_size": {
                    "default": "Standard_D3_v2",
                    "description": "VM size"
                },
                "aks_dns_prefix": {
                    "default": "poc-aks",
                    "description": "Optional DNS prefix to use with hosted Kubernetes API server FQDN."
                },
                "aks_dns_service_ip": {
                    "default": "10.201.0.10",
                    "description": "DNS server IP address"
                },
                "aks_docker_bridge_cidr": {
                    "default": "172.17.0.1/16",
                    "description": "CIDR notation IP for Docker bridge."
                },
                "aks_enable_rbac": {
                    "default": "false",
                    "description": "Enable RBAC on the AKS cluster. Defaults to false."
                },
                "aks_name": {
                    "default": "aks-cluster1",
                    "description": "AKS cluster name"
                },
                "aks_service_cidr": {
                    "default": "10.201.0.0/16",
                    "description": "CIDR notation IP range from which to assign service cluster IPs"
                },
                "aks_subnet_address_prefix": {
                    "default": "10.200.0.0/16",
                    "description": "Subnet address prefix."
                },
                "aks_subnet_name": {
                    "default": "kubesubnet",
                    "description": "Subnet Name."
                },
                "allow_inbound_mgmt_ips": {
                    "default": [
                        "2.3.186.236"
                    ]
                },
                "app_gateway_name": {
                    "default": "app-gw1",
                    "description": "Name of the Application Gateway"
                },
                "app_gateway_sku": {
                    "default": "WAF_v2",
                    "description": "Name of the Application Gateway SKU"
                },
                "app_gateway_subnet_address_prefix": {
                    "default": "10.100.0.0/24",
                    "description": "Subnet server IP address."
                },
                "app_gateway_subnet_name": {
                    "default": "snet-applicationgateway",
                    "description": "Subnet name for Application Gateway"
                },
                "app_gateway_tier": {
                    "default": "Standard_v2",
                    "description": "Tier of the Application Gateway tier"
                },
                "avzones": {
                    "default": [
                        "1",
                        "2",
                        "3"
                    ]
                },
                "common_vmseries_sku": {
                    "default": "byol",
                    "description": "VM-Series SKU - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                },
                "common_vmseries_version": {
                    "default": "latest",
                    "description": "VM-Series PAN-OS version - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                },
                "common_vmseries_vm_size": {
                    "default": "Standard_D3_v2",
                    "description": "Azure VM size (type) to be created. Consult the *VM-Series Deployment Guide* as only a few selected sizes are supported."
                },
                "enable_zones": {
                    "default": true
                },
                "firewall_vm_name": {
                    "default": "firewall"
                },
                "fw_management_subnet_address_prefix": {
                    "default": "10.100.1.128/26",
                    "description": "Subnet server IP address."
                },
                "fw_trust_subnet_address_prefix": {
                    "default": "10.100.1.0/26",
                    "description": "Subnet server IP address."
                },
                "fw_untrust_subnet_address_prefix": {
                    "default": "10.100.1.64/26",
                    "description": "Subnet server IP address."
                },
                "kubernetes_version": {
                    "default": "1.11.5",
                    "description": "Kubernetes version"
                },
                "password": {
                    "default": "ARandomPassword=1",
                    "description": "Initial administrative password to use for all systems. Set to null for an auto-generated password."
                },
                "public_ssh_key_path": {
                    "default": "~/.ssh/id_rsa.pub",
                    "description": "Public key path for SSH."
                },
                "resource_group_location": {
                    "default": "northeurope",
                    "description": "Location of the resource group."
                },
                "resource_group_name": {
                    "default": "poc-appgw-aks-rg",
                    "description": "Ressource Group Name"
                },
                "tags": {
                    "default": {
                        "source": "terraform"
                    }
                },
                "username": {
                    "default": "panadmin",
                    "description": "Initial administrative username to use for all systems."
                },
                "virtual_network_address_hub_prefix": {
                    "default": "10.100.0.0/23",
                    "description": "Hub VNet address prefix"
                },
                "virtual_network_address_spoke_prefix": {
                    "default": "10.200.0.0/16",
                    "description": "Spoke VNet address prefix"
                },
                "virtual_network_hub_name": {
                    "default": "hubVirtualNetwork",
                    "description": "Virtual network name"
                },
                "virtual_network_spoke_name": {
                    "default": "aksVirtualNetwork",
                    "description": "Virtual network name"
                },
                "vm_user_name": {
                    "default": "vmuser1",
                    "description": "User name for the VM"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "application_ip_address": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "resource_group_name": {
            "actions": [
                "create"
            ],
            "after": "poc-appgw-aks-rg",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "application_ip_address": {
                "sensitive": false
            },
            "resource_group_name": {
                "sensitive": false,
                "type": "string",
                "value": "poc-appgw-aks-rg"
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.bootstrap",
                    "resources": [
                        {
                            "address": "module.bootstrap.azurerm_storage_account.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
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
                                "location": "northeurope",
                                "min_tls_version": "TLS1_2",
                                "nfsv3_enabled": false,
                                "public_network_access_enabled": true,
                                "queue_encryption_key_type": "Service",
                                "resource_group_name": "poc-appgw-aks-rg",
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
                            "address": "module.bootstrap.azurerm_storage_share.this",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "acl": [],
                                "metadata": {}
                            },
                            "type": "azurerm_storage_share",
                            "values": {
                                "access_tier": "Cool",
                                "acl": [],
                                "enabled_protocol": "SMB",
                                "quota": 50,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
                            "index": "config",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
                            "index": "content",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "content",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
                            "index": "license",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "license",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
                            "index": "plugins",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "plugins",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
                            "index": "software",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "software",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
                            "index": "templates/bootstrap.xml",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_file",
                            "values": {
                                "content_disposition": null,
                                "content_encoding": null,
                                "content_md5": null,
                                "content_type": "application/octet-stream",
                                "metadata": null,
                                "name": "bootstrap.xml",
                                "path": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
                            "index": "templates/init-cfg.txt",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_file",
                            "values": {
                                "content_disposition": null,
                                "content_encoding": null,
                                "content_md5": null,
                                "content_type": "application/octet-stream",
                                "metadata": null,
                                "name": "init-cfg.txt",
                                "path": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
                            "index": "templates/bootstrap.xml",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 0,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_id",
                            "values": {
                                "byte_length": 8,
                                "keepers": {
                                    "md5": "3623589ec35d8f23007d3828be8a5d2b"
                                },
                                "prefix": null
                            }
                        },
                        {
                            "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
                            "index": "templates/init-cfg.txt",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 0,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_id",
                            "values": {
                                "byte_length": 8,
                                "keepers": {
                                    "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
                                },
                                "prefix": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.paloalto_vmseries",
                    "resources": [
                        {
                            "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "connection_string": true,
                                "instrumentation_key": true
                            },
                            "type": "azurerm_application_insights",
                            "values": {
                                "application_type": "other",
                                "disable_ip_masking": false,
                                "force_customer_storage_for_profiler": false,
                                "internet_ingestion_enabled": true,
                                "internet_query_enabled": true,
                                "local_authentication_disabled": false,
                                "location": "northeurope",
                                "name": "firewall",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "retention_in_days": 90,
                                "sampling_percentage": 100,
                                "tags": null,
                                "timeouts": null,
                                "workspace_id": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
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
                                "enable_ip_forwarding": false,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-mgmt",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "this",
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
                                "enable_accelerated_networking": true,
                                "enable_ip_forwarding": true,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-public",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
                            "index": 2,
                            "mode": "managed",
                            "name": "this",
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
                                "enable_accelerated_networking": true,
                                "enable_ip_forwarding": true,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4",
                                        "public_ip_address_id": null
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-private",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "boot_diagnostics": [],
                                "identity": [
                                    {}
                                ],
                                "network_interface_ids": [],
                                "os_profile": true,
                                "os_profile_linux_config": [
                                    {
                                        "ssh_keys": []
                                    }
                                ],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [],
                                "plan": [
                                    {}
                                ],
                                "storage_data_disk": [],
                                "storage_image_reference": [
                                    {}
                                ],
                                "storage_os_disk": [
                                    {}
                                ],
                                "zones": [
                                    false
                                ]
                            },
                            "type": "azurerm_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "boot_diagnostics": [],
                                "delete_data_disks_on_termination": true,
                                "delete_os_disk_on_termination": true,
                                "identity": [
                                    {
                                        "identity_ids": null,
                                        "type": "SystemAssigned"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall",
                                "os_profile": [
                                    {
                                        "admin_password": "ARandomPassword=1",
                                        "admin_username": "panadmin",
                                        "computer_name": "firewall"
                                    }
                                ],
                                "os_profile_linux_config": [
                                    {
                                        "disable_password_authentication": false,
                                        "ssh_keys": []
                                    }
                                ],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [],
                                "plan": [
                                    {
                                        "name": "byol",
                                        "product": "vmseries-flex",
                                        "publisher": "paloaltonetworks"
                                    }
                                ],
                                "proximity_placement_group_id": null,
                                "resource_group_name": "poc-appgw-aks-rg",
                                "storage_image_reference": [
                                    {
                                        "id": "",
                                        "offer": "vmseries-flex",
                                        "publisher": "paloaltonetworks",
                                        "sku": "byol",
                                        "version": "latest"
                                    }
                                ],
                                "storage_os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "create_option": "FromImage",
                                        "image_uri": null,
                                        "managed_disk_type": "StandardSSD_LRS",
                                        "name": "firewall-vhd",
                                        "os_type": "Linux",
                                        "vhd_uri": null,
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "vm_size": "Standard_D3_v2",
                                "zones": [
                                    "1"
                                ]
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azurerm_application_gateway.application-gateway",
                    "mode": "managed",
                    "name": "application-gateway",
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
                        "rewrite_rule_set": [
                            {
                                "rewrite_rule": [
                                    {
                                        "condition": [],
                                        "request_header_configuration": [
                                            {}
                                        ],
                                        "response_header_configuration": [],
                                        "url": []
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
                                "name": "aksVirtualNetwork-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "aksVirtualNetwork-be-htst",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "",
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
                                "name": "aksVirtualNetwork-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "aksVirtualNetwork-feport",
                                "port": 80
                            },
                            {
                                "name": "httpsPort",
                                "port": 443
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "app-gw-pip01"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "aksVirtualNetwork-feip",
                                "frontend_port_name": "aksVirtualNetwork-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "aksVirtualNetwork-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "northeurope",
                        "name": "app-gw1",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "aksVirtualNetwork-beap",
                                "backend_http_settings_name": "aksVirtualNetwork-be-htst",
                                "http_listener_name": "aksVirtualNetwork-httplstn",
                                "name": "aksVirtualNetwork-rqrt",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "poc-appgw-aks-rg",
                        "rewrite_rule_set": [
                            {
                                "name": "add-default-header",
                                "rewrite_rule": [
                                    {
                                        "condition": [],
                                        "name": "add-header-MyHeader",
                                        "request_header_configuration": [
                                            {
                                                "header_name": "MyHeader",
                                                "header_value": "Test"
                                            }
                                        ],
                                        "response_header_configuration": [],
                                        "rule_sequence": 100,
                                        "url": []
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
                        "tags": {
                            "source": "terraform"
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
                    "address": "azurerm_kubernetes_cluster.k8s",
                    "mode": "managed",
                    "name": "k8s",
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
                        "linux_profile": [
                            {
                                "ssh_key": [
                                    {}
                                ]
                            }
                        ],
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
                                "name": "agentpool",
                                "node_count": 4,
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
                                "vm_size": "Standard_D3_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "poc-aks",
                        "dns_prefix_private_cluster": null,
                        "edge_zone": null,
                        "enable_pod_security_policy": null,
                        "http_application_routing_enabled": false,
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
                        "linux_profile": [
                            {
                                "admin_username": "vmuser1",
                                "ssh_key": [
                                    {
                                        "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                    }
                                ]
                            }
                        ],
                        "local_account_disabled": null,
                        "location": "northeurope",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "aks-cluster1",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.201.0.10",
                                "docker_bridge_cidr": "172.17.0.1/16",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.201.0.0/16"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": null,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "azurerm_network_security_group.nsg-mgmt",
                    "mode": "managed",
                    "name": "nsg-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "northeurope",
                        "name": "sg-mgmt",
                        "resource_group_name": "poc-appgw-aks-rg",
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
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "northeurope",
                        "name": "sg-public",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.mgmt",
                    "mode": "managed",
                    "name": "mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "source_address_prefixes": [
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
                        "destination_port_range": "*",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "vmseries-mgmt-allow-inbound",
                        "network_security_group_name": "sg-mgmt",
                        "priority": 1000,
                        "protocol": "*",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "source_address_prefix": null,
                        "source_address_prefixes": [
                            "2.3.186.236"
                        ],
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.app-gw-pip01",
                    "mode": "managed",
                    "name": "app-gw-pip01",
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
                        "domain_name_label": "akscluster",
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "northeurope",
                        "name": "app-gw-pip01",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.fw-mgmt",
                    "mode": "managed",
                    "name": "fw-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": "firewall-mgmt",
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "northeurope",
                        "name": "firewall-mgmt",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.fw-public",
                    "mode": "managed",
                    "name": "fw-public",
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
                        "location": "northeurope",
                        "name": "firewall-public",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
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
                        "location": "northeurope",
                        "managed_by": null,
                        "name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
                    "mode": "managed",
                    "name": "aks-agic-id-rg-contrib",
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
                    "address": "azurerm_route.aks-route",
                    "mode": "managed",
                    "name": "aks-route",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_route",
                    "values": {
                        "address_prefix": "10.200.0.0/16",
                        "name": "route-to-aks",
                        "next_hop_in_ip_address": "10.100.1.68",
                        "next_hop_type": "VirtualAppliance",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "route_table_name": "appgw-rt",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route.appgw-route",
                    "mode": "managed",
                    "name": "appgw-route",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_route",
                    "values": {
                        "address_prefix": "10.100.0.0/23",
                        "name": "route-to-appgw",
                        "next_hop_in_ip_address": "10.100.1.4",
                        "next_hop_type": "VirtualAppliance",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "route_table_name": "aks-rt",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.aks-rt",
                    "mode": "managed",
                    "name": "aks-rt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "location": "northeurope",
                        "name": "aks-rt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.appgw-rt",
                    "mode": "managed",
                    "name": "appgw-rt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "location": "northeurope",
                        "name": "appgw-rt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.snet-aks",
                    "mode": "managed",
                    "name": "snet-aks",
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
                            "10.200.0.0/16"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "kubesubnet",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "aksVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-appgw",
                    "mode": "managed",
                    "name": "snet-appgw",
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
                            "10.100.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-applicationgateway",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-management",
                    "mode": "managed",
                    "name": "snet-firewall-management",
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
                            "10.100.1.128/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-management",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-trust",
                    "mode": "managed",
                    "name": "snet-firewall-trust",
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
                            "10.100.1.0/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-trust",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-untrust",
                    "mode": "managed",
                    "name": "snet-firewall-untrust",
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
                            "10.100.1.64/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-untrust",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
                    "mode": "managed",
                    "name": "network_security_group_association-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
                    "mode": "managed",
                    "name": "network_security_group_association_public",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.aks-rt-association",
                    "mode": "managed",
                    "name": "aks-rt-association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.appgw-rt-association",
                    "mode": "managed",
                    "name": "appgw-rt-association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.hub",
                    "mode": "managed",
                    "name": "hub",
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
                            "10.100.0.0/23"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "northeurope",
                        "name": "hubVirtualNetwork",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.spoke",
                    "mode": "managed",
                    "name": "spoke",
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
                            "10.200.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "northeurope",
                        "name": "aksVirtualNetwork",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.hub-to-spoke",
                    "mode": "managed",
                    "name": "hub-to-spoke",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "hub-to-spoke",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.spoke-to-hub",
                    "mode": "managed",
                    "name": "spoke-to-hub",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "spoke-to-hub",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "aksVirtualNetwork"
                    }
                },
                {
                    "address": "random_integer.id",
                    "mode": "managed",
                    "name": "id",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_integer",
                    "values": {
                        "keepers": null,
                        "max": 999,
                        "min": 100,
                        "seed": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_account.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
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
                        "location": "northeurope",
                        "min_tls_version": "TLS1_2",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "poc-appgw-aks-rg",
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
                    "address": "module.bootstrap.azurerm_storage_share.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "acl": [],
                        "metadata": {}
                    },
                    "type": "azurerm_storage_share",
                    "values": {
                        "access_tier": "Cool",
                        "acl": [],
                        "enabled_protocol": "SMB",
                        "quota": 50,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
                    "index": "config",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
                    "index": "content",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "content",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
                    "index": "license",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "license",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
                    "index": "plugins",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "plugins",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
                    "index": "software",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "software",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
                    "index": "templates/bootstrap.xml",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_file",
                    "values": {
                        "content_disposition": null,
                        "content_encoding": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "metadata": null,
                        "name": "bootstrap.xml",
                        "path": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
                    "index": "templates/init-cfg.txt",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_file",
                    "values": {
                        "content_disposition": null,
                        "content_encoding": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "metadata": null,
                        "name": "init-cfg.txt",
                        "path": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
                    "index": "templates/bootstrap.xml",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": {
                            "md5": "3623589ec35d8f23007d3828be8a5d2b"
                        },
                        "prefix": null
                    }
                },
                {
                    "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
                    "index": "templates/init-cfg.txt",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": {
                            "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
                        },
                        "prefix": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "other",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "firewall",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "retention_in_days": 90,
                        "sampling_percentage": 100,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
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
                        "enable_ip_forwarding": false,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-mgmt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "this",
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
                        "enable_accelerated_networking": true,
                        "enable_ip_forwarding": true,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-public",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
                    "index": 2,
                    "mode": "managed",
                    "name": "this",
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
                        "enable_accelerated_networking": true,
                        "enable_ip_forwarding": true,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-private",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "boot_diagnostics": [],
                        "identity": [
                            {}
                        ],
                        "network_interface_ids": [],
                        "os_profile": true,
                        "os_profile_linux_config": [
                            {
                                "ssh_keys": []
                            }
                        ],
                        "os_profile_secrets": [],
                        "os_profile_windows_config": [],
                        "plan": [
                            {}
                        ],
                        "storage_data_disk": [],
                        "storage_image_reference": [
                            {}
                        ],
                        "storage_os_disk": [
                            {}
                        ],
                        "zones": [
                            false
                        ]
                    },
                    "type": "azurerm_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "boot_diagnostics": [],
                        "delete_data_disks_on_termination": true,
                        "delete_os_disk_on_termination": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall",
                        "os_profile": [
                            {
                                "admin_password": "ARandomPassword=1",
                                "admin_username": "panadmin",
                                "computer_name": "firewall"
                            }
                        ],
                        "os_profile_linux_config": [
                            {
                                "disable_password_authentication": false,
                                "ssh_keys": []
                            }
                        ],
                        "os_profile_secrets": [],
                        "os_profile_windows_config": [],
                        "plan": [
                            {
                                "name": "byol",
                                "product": "vmseries-flex",
                                "publisher": "paloaltonetworks"
                            }
                        ],
                        "proximity_placement_group_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "storage_image_reference": [
                            {
                                "id": "",
                                "offer": "vmseries-flex",
                                "publisher": "paloaltonetworks",
                                "sku": "byol",
                                "version": "latest"
                            }
                        ],
                        "storage_os_disk": [
                            {
                                "caching": "ReadWrite",
                                "create_option": "FromImage",
                                "image_uri": null,
                                "managed_disk_type": "StandardSSD_LRS",
                                "name": "firewall-vhd",
                                "os_type": "Linux",
                                "vhd_uri": null,
                                "write_accelerator_enabled": false
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "vm_size": "Standard_D3_v2",
                        "zones": [
                            "1"
                        ]
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
                "resource_group_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "poc-appgw-aks-rg"
                }
            },
            "root_module": {}
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "ingress_application_gateway",
                0,
                "ingress_application_gateway_identity",
                0,
                "object_id"
            ],
            "resource": "azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.app-gw-pip01"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.paloalto_vmseries.azurerm_public_ip.this[0]"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.nsg-mgmt"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.spoke"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-firewall-management"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-mgmt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-public"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "private_ip_address"
            ],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this[0]"
        },
        {
            "attribute": [
                "identity",
                0,
                "principal_id"
            ],
            "resource": "module.paloalto_vmseries.azurerm_virtual_machine.this"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_integer.id"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-firewall-untrust"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_route_table.aks-rt"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_route_table.appgw-rt"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        },
        {
            "attribute": [
                "instrumentation_key"
            ],
            "resource": "module.paloalto_vmseries.azurerm_application_insights.this[0]"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.azurerm_storage_account.this[0]"
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
            "resource": "azurerm_application_gateway.application-gateway"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.hub"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.appgw-rt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.spoke"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-aks"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.data.azurerm_storage_account.this[0]"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.hub"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.fw-public"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.aks-rt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        },
        {
            "attribute": [
                "id"
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
                "id"
            ],
            "resource": "azurerm_subnet.snet-firewall-trust"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.random_id.this"
        },
        {
            "attribute": [],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.fw-mgmt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.app-gw-pip01"
        },
        {
            "attribute": [],
            "resource": "module.paloalto_vmseries.azurerm_public_ip.this"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.application-gateway",
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
                            "name": "aksVirtualNetwork-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "aksVirtualNetwork-be-htst",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
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
                            "name": "aksVirtualNetwork-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "aksVirtualNetwork-feport",
                            "port": 80
                        },
                        {
                            "name": "httpsPort",
                            "port": 443
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "app-gw-pip01"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "aksVirtualNetwork-feip",
                            "frontend_port_name": "aksVirtualNetwork-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "aksVirtualNetwork-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "northeurope",
                    "name": "app-gw1",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "aksVirtualNetwork-beap",
                            "backend_http_settings_name": "aksVirtualNetwork-be-htst",
                            "http_listener_name": "aksVirtualNetwork-httplstn",
                            "name": "aksVirtualNetwork-rqrt",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "poc-appgw-aks-rg",
                    "rewrite_rule_set": [
                        {
                            "name": "add-default-header",
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "name": "add-header-MyHeader",
                                    "request_header_configuration": [
                                        {
                                            "header_name": "MyHeader",
                                            "header_value": "Test"
                                        }
                                    ],
                                    "response_header_configuration": [],
                                    "rule_sequence": 100,
                                    "url": []
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
                    "tags": {
                        "source": "terraform"
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
                    "rewrite_rule_set": [
                        {
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "request_header_configuration": [
                                        {}
                                    ],
                                    "response_header_configuration": [],
                                    "url": []
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
                    "rewrite_rule_set": [
                        {
                            "id": true,
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "request_header_configuration": [
                                        {}
                                    ],
                                    "response_header_configuration": [],
                                    "url": []
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
            "name": "application-gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_kubernetes_cluster.k8s",
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
                            "name": "agentpool",
                            "node_count": 4,
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
                            "vm_size": "Standard_D3_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "poc-aks",
                    "dns_prefix_private_cluster": null,
                    "edge_zone": null,
                    "enable_pod_security_policy": null,
                    "http_application_routing_enabled": false,
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
                    "linux_profile": [
                        {
                            "admin_username": "vmuser1",
                            "ssh_key": [
                                {
                                    "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                }
                            ]
                        }
                    ],
                    "local_account_disabled": null,
                    "location": "northeurope",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "aks-cluster1",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.201.0.10",
                            "docker_bridge_cidr": "172.17.0.1/16",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.201.0.0/16"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "source": "terraform"
                    },
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
                    "linux_profile": [
                        {
                            "ssh_key": [
                                {}
                            ]
                        }
                    ],
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
                    "kubernetes_version": true,
                    "linux_profile": [
                        {
                            "ssh_key": [
                                {}
                            ]
                        }
                    ],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
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
            "name": "k8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_network_security_group.nsg-mgmt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "sg-mgmt",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "nsg-mgmt",
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
                    "location": "northeurope",
                    "name": "sg-public",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "nsg-public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_rule.mgmt",
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
                    "destination_port_range": "*",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "vmseries-mgmt-allow-inbound",
                    "network_security_group_name": "sg-mgmt",
                    "priority": 1000,
                    "protocol": "*",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "source_address_prefix": null,
                    "source_address_prefixes": [
                        "2.3.186.236"
                    ],
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "source_address_prefixes": [
                        false
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "source_address_prefixes": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_public_ip.app-gw-pip01",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "akscluster",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "northeurope",
                    "name": "app-gw-pip01",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "source": "terraform"
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
            "name": "app-gw-pip01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.fw-mgmt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "firewall-mgmt",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "northeurope",
                    "name": "firewall-mgmt",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "fw-mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.fw-public",
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
                    "location": "northeurope",
                    "name": "firewall-public",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "fw-public",
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
                    "location": "northeurope",
                    "managed_by": null,
                    "name": "poc-appgw-aks-rg",
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
            "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
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
            "name": "aks-agic-id-rg-contrib",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_route.aks-route",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefix": "10.200.0.0/16",
                    "name": "route-to-aks",
                    "next_hop_in_ip_address": "10.100.1.68",
                    "next_hop_type": "VirtualAppliance",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "route_table_name": "appgw-rt",
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
            "name": "aks-route",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route"
        },
        {
            "address": "azurerm_route.appgw-route",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefix": "10.100.0.0/23",
                    "name": "route-to-appgw",
                    "next_hop_in_ip_address": "10.100.1.4",
                    "next_hop_type": "VirtualAppliance",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "route_table_name": "aks-rt",
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
            "name": "appgw-route",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route"
        },
        {
            "address": "azurerm_route_table.aks-rt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "aks-rt",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "disable_bgp_route_propagation": true,
                    "id": true,
                    "route": true,
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks-rt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_route_table.appgw-rt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "appgw-rt",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "disable_bgp_route_propagation": true,
                    "id": true,
                    "route": true,
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw-rt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_subnet.snet-aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.200.0.0/16"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "kubesubnet",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "aksVirtualNetwork"
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
            "name": "snet-aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-applicationgateway",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-management",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.128/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-management",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-management",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-trust",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.0/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-trust",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-trust",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-untrust",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.64/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-untrust",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-untrust",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
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
            "name": "network_security_group_association-mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
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
            "name": "network_security_group_association_public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_route_table_association.aks-rt-association",
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
            "name": "aks-rt-association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_subnet_route_table_association.appgw-rt-association",
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
            "name": "appgw-rt-association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_virtual_network.hub",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.100.0.0/23"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "northeurope",
                    "name": "hubVirtualNetwork",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": {
                        "source": "terraform"
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
            "name": "hub",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_virtual_network.spoke",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.200.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "northeurope",
                    "name": "aksVirtualNetwork",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": {
                        "source": "terraform"
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
            "name": "spoke",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_virtual_network_peering.hub-to-spoke",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "hub-to-spoke",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "hub-to-spoke",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "azurerm_virtual_network_peering.spoke-to-hub",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "spoke-to-hub",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "aksVirtualNetwork"
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
            "name": "spoke-to-hub",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "random_integer.id",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "max": 999,
                    "min": 100,
                    "seed": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "id",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_integer"
        },
        {
            "address": "module.bootstrap.azurerm_storage_account.this[0]",
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
                    "location": "northeurope",
                    "min_tls_version": "TLS1_2",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "poc-appgw-aks-rg",
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
                    "name": true,
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_tier": "Cool",
                    "acl": [],
                    "enabled_protocol": "SMB",
                    "quota": 50,
                    "timeouts": null
                },
                "after_sensitive": {
                    "acl": [],
                    "metadata": {}
                },
                "after_unknown": {
                    "acl": [],
                    "id": true,
                    "metadata": true,
                    "name": true,
                    "resource_manager_id": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "config",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "content",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "content",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "license",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "license",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "plugins",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "plugins",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "software",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "software",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_disposition": null,
                    "content_encoding": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "metadata": null,
                    "name": "bootstrap.xml",
                    "path": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "content_length": true,
                    "id": true,
                    "source": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/bootstrap.xml",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_file"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_disposition": null,
                    "content_encoding": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "metadata": null,
                    "name": "init-cfg.txt",
                    "path": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "content_length": true,
                    "id": true,
                    "source": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/init-cfg.txt",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_file"
        },
        {
            "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": {
                        "md5": "3623589ec35d8f23007d3828be8a5d2b"
                    },
                    "prefix": null
                },
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true,
                    "keepers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/bootstrap.xml",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": {
                        "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
                    },
                    "prefix": null
                },
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true,
                    "keepers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/init-cfg.txt",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "other",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "firewall",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "retention_in_days": 90,
                    "sampling_percentage": 100,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": null
                },
                "after_sensitive": {
                    "connection_string": true,
                    "instrumentation_key": true
                },
                "after_unknown": {
                    "app_id": true,
                    "connection_string": true,
                    "daily_data_cap_in_gb": true,
                    "daily_data_cap_notifications_disabled": true,
                    "id": true,
                    "instrumentation_key": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": false,
                    "enable_ip_forwarding": false,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-mgmt",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-public",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-private",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 2,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "boot_diagnostics": [],
                    "delete_data_disks_on_termination": true,
                    "delete_os_disk_on_termination": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall",
                    "os_profile": [
                        {
                            "admin_password": "ARandomPassword=1",
                            "admin_username": "panadmin",
                            "computer_name": "firewall"
                        }
                    ],
                    "os_profile_linux_config": [
                        {
                            "disable_password_authentication": false,
                            "ssh_keys": []
                        }
                    ],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [],
                    "plan": [
                        {
                            "name": "byol",
                            "product": "vmseries-flex",
                            "publisher": "paloaltonetworks"
                        }
                    ],
                    "proximity_placement_group_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "storage_image_reference": [
                        {
                            "id": "",
                            "offer": "vmseries-flex",
                            "publisher": "paloaltonetworks",
                            "sku": "byol",
                            "version": "latest"
                        }
                    ],
                    "storage_os_disk": [
                        {
                            "caching": "ReadWrite",
                            "create_option": "FromImage",
                            "image_uri": null,
                            "managed_disk_type": "StandardSSD_LRS",
                            "name": "firewall-vhd",
                            "os_type": "Linux",
                            "vhd_uri": null,
                            "write_accelerator_enabled": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "vm_size": "Standard_D3_v2",
                    "zones": [
                        "1"
                    ]
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "boot_diagnostics": [],
                    "identity": [
                        {}
                    ],
                    "network_interface_ids": [],
                    "os_profile": true,
                    "os_profile_linux_config": [
                        {
                            "ssh_keys": []
                        }
                    ],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [],
                    "plan": [
                        {}
                    ],
                    "storage_data_disk": [],
                    "storage_image_reference": [
                        {}
                    ],
                    "storage_os_disk": [
                        {}
                    ],
                    "zones": [
                        false
                    ]
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "availability_set_id": true,
                    "boot_diagnostics": [],
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "license_type": true,
                    "network_interface_ids": true,
                    "os_profile": [
                        {
                            "custom_data": true
                        }
                    ],
                    "os_profile_linux_config": [
                        {
                            "ssh_keys": []
                        }
                    ],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [],
                    "plan": [
                        {}
                    ],
                    "primary_network_interface_id": true,
                    "storage_data_disk": true,
                    "storage_image_reference": [
                        {}
                    ],
                    "storage_os_disk": [
                        {
                            "disk_size_gb": true,
                            "managed_disk_id": true
                        }
                    ],
                    "zones": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:40:30Z",
    "variables": {
        "aks_agent_count": {
            "value": 4
        },
        "aks_agent_os_disk_size": {
            "value": 40
        },
        "aks_agent_vm_size": {
            "value": "Standard_D3_v2"
        },
        "aks_dns_prefix": {
            "value": "poc-aks"
        },
        "aks_dns_service_ip": {
            "value": "10.201.0.10"
        },
        "aks_docker_bridge_cidr": {
            "value": "172.17.0.1/16"
        },
        "aks_enable_rbac": {
            "value": "false"
        },
        "aks_name": {
            "value": "aks-cluster1"
        },
        "aks_service_cidr": {
            "value": "10.201.0.0/16"
        },
        "aks_subnet_address_prefix": {
            "value": "10.200.0.0/16"
        },
        "aks_subnet_name": {
            "value": "kubesubnet"
        },
        "allow_inbound_mgmt_ips": {
            "value": [
                "2.3.186.236"
            ]
        },
        "app_gateway_name": {
            "value": "app-gw1"
        },
        "app_gateway_sku": {
            "value": "WAF_v2"
        },
        "app_gateway_subnet_address_prefix": {
            "value": "10.100.0.0/24"
        },
        "app_gateway_subnet_name": {
            "value": "snet-applicationgateway"
        },
        "app_gateway_tier": {
            "value": "Standard_v2"
        },
        "avzones": {
            "value": [
                "1",
                "2",
                "3"
            ]
        },
        "common_vmseries_sku": {
            "value": "byol"
        },
        "common_vmseries_version": {
            "value": "latest"
        },
        "common_vmseries_vm_size": {
            "value": "Standard_D3_v2"
        },
        "enable_zones": {
            "value": true
        },
        "firewall_vm_name": {
            "value": "firewall"
        },
        "fw_management_subnet_address_prefix": {
            "value": "10.100.1.128/26"
        },
        "fw_trust_subnet_address_prefix": {
            "value": "10.100.1.0/26"
        },
        "fw_untrust_subnet_address_prefix": {
            "value": "10.100.1.64/26"
        },
        "kubernetes_version": {
            "value": "1.11.5"
        },
        "password": {
            "value": "ARandomPassword=1"
        },
        "public_ssh_key_path": {
            "value": "~/.ssh/id_rsa.pub"
        },
        "resource_group_location": {
            "value": "northeurope"
        },
        "resource_group_name": {
            "value": "poc-appgw-aks-rg"
        },
        "tags": {
            "value": {
                "source": "terraform"
            }
        },
        "username": {
            "value": "panadmin"
        },
        "virtual_network_address_hub_prefix": {
            "value": "10.100.0.0/23"
        },
        "virtual_network_address_spoke_prefix": {
            "value": "10.200.0.0/16"
        },
        "virtual_network_hub_name": {
            "value": "hubVirtualNetwork"
        },
        "virtual_network_spoke_name": {
            "value": "aksVirtualNetwork"
        },
        "vm_user_name": {
            "value": "vmuser1"
        }
    }
}