
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
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_linux_virtual_machine.example.private_ip_address",
                                        "azurerm_linux_virtual_machine.example"
                                    ]
                                },
                                "name": {
                                    "constant_value": "example-backend-pool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "example-backend-http-settings"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "frontend-ip"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.example.id",
                                        "azurerm_public_ip.example"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "https-port"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "example-gateway-ip-configuration"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.gateway.id",
                                        "azurerm_subnet.gateway"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "frontend-ip"
                                },
                                "frontend_port_name": {
                                    "constant_value": "https-port"
                                },
                                "name": {
                                    "constant_value": "example-listener"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "example-ssl-cert"
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
                            "constant_value": "example-appgateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "example-backend-pool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "example-backend-http-settings"
                                },
                                "http_listener_name": {
                                    "constant_value": "example-listener"
                                },
                                "name": {
                                    "constant_value": "example-routing-rule"
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "constant_value": "Standard_Small"
                                },
                                "tier": {
                                    "constant_value": "Standard"
                                }
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": {},
                                "name": {
                                    "constant_value": "example-ssl-cert"
                                },
                                "password": {
                                    "constant_value": "export"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_key_vault.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-keyvault"
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_key_vault_secret.example",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        },
                        "name": {
                            "constant_value": "sql-password"
                        },
                        "value": {
                            "constant_value": "Strong!Passw0rd"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_secret"
                },
                {
                    "address": "azurerm_linux_virtual_machine.example",
                    "expressions": {
                        "admin_ssh_key": [
                            {
                                "public_key": {
                                    "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                },
                                "username": {
                                    "constant_value": "adminuser"
                                }
                            }
                        ],
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-machine"
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.example.id",
                                "azurerm_network_interface.example"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Standard_LRS"
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
                            "constant_value": "Standard_F2"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "UbuntuServer"
                                },
                                "publisher": {
                                    "constant_value": "Canonical"
                                },
                                "sku": {
                                    "constant_value": "24.04-LTS"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "provisioners": [
                        {
                            "expressions": {
                                "inline": {
                                    "constant_value": [
                                        "sudo apt-get update",
                                        "sudo apt-get install -y nginx",
                                        "sudo systemctl start nginx",
                                        "sudo systemctl enable nginx"
                                    ]
                                }
                            },
                            "type": "remote-exec"
                        }
                    ],
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "azurerm_mssql_database.example",
                    "expressions": {
                        "name": {
                            "constant_value": "exampledb"
                        },
                        "server_id": {
                            "references": [
                                "azurerm_mssql_server.example.id",
                                "azurerm_mssql_server.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_mssql_database"
                },
                {
                    "address": "azurerm_mssql_server.example",
                    "expressions": {
                        "administrator_login": {
                            "constant_value": "sqladmin"
                        },
                        "administrator_login_password": {
                            "constant_value": "Strong!Passw0rd"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-sqlserver"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "version": {
                            "constant_value": "12.0"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_server"
                },
                {
                    "address": "azurerm_network_interface.example",
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "internal"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.vm.id",
                                        "azurerm_subnet.vm"
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
                            "constant_value": "example-nic"
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
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_security_group.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-nsg"
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
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_private_dns_zone.example",
                    "expressions": {
                        "name": {
                            "constant_value": "privatelink.database.windows.net"
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
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "expressions": {
                        "name": {
                            "constant_value": "example-pdzvnetlink"
                        },
                        "private_dns_zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.example.name",
                                "azurerm_private_dns_zone.example"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.example.id",
                                "azurerm_virtual_network.example"
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
                    "address": "azurerm_private_endpoint.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-private-endpoint"
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
                                        "azurerm_mssql_server.example.id",
                                        "azurerm_mssql_server.example"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.endpoints.id",
                                "azurerm_subnet.endpoints"
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
                    "address": "azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-public-ip"
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
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_redis_cache.example",
                    "expressions": {
                        "capacity": {
                            "constant_value": 0
                        },
                        "enable_non_ssl_port": {
                            "constant_value": false
                        },
                        "family": {
                            "constant_value": "C"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "minimum_tls_version": {
                            "constant_value": "1.2"
                        },
                        "name": {
                            "constant_value": "example-redis"
                        },
                        "redis_configuration": [
                            {}
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Basic"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_redis_cache"
                },
                {
                    "address": "azurerm_resource_group.example",
                    "expressions": {
                        "location": {
                            "constant_value": "West Us"
                        },
                        "name": {
                            "constant_value": "example-rg"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.endpoints",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.3.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "endpoints-subnet"
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
                    "name": "endpoints",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.gateway",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "gateway-subnet"
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
                    "name": "gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.vm",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "vm-subnet"
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
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.endpoints",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.endpoints.id",
                                "azurerm_subnet.endpoints"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.gateway",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.gateway.id",
                                "azurerm_subnet.gateway"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.vm",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.vm.id",
                                "azurerm_subnet.vm"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-network"
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
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "mode": "managed",
                    "name": "example",
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
                        "ssl_certificate": true,
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
                                "name": "example-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "example-backend-http-settings",
                                "path": "/",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "",
                                "protocol": "Https",
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
                                "name": "frontend-ip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "https-port",
                                "port": 443
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "example-gateway-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "frontend-ip",
                                "frontend_port_name": "https-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "example-listener",
                                "protocol": "Https",
                                "require_sni": null,
                                "ssl_certificate_name": "example-ssl-cert",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus",
                        "name": "example-appgateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "example-backend-pool",
                                "backend_http_settings_name": "example-backend-http-settings",
                                "http_listener_name": "example-listener",
                                "name": "example-routing-rule",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_Small",
                                "tier": "Standard"
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": "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",
                                "key_vault_secret_id": "",
                                "name": "example-ssl-cert",
                                "password": "export"
                            }
                        ],
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
                    "address": "azurerm_key_vault.example",
                    "mode": "managed",
                    "name": "example",
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
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "westus",
                        "name": "example-keyvault",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "example-rg",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault_secret.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "value": true
                    },
                    "type": "azurerm_key_vault_secret",
                    "values": {
                        "content_type": null,
                        "expiration_date": null,
                        "name": "sql-password",
                        "not_before_date": null,
                        "tags": null,
                        "timeouts": null,
                        "value": "Strong!Passw0rd"
                    }
                },
                {
                    "address": "azurerm_linux_virtual_machine.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
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
                        "admin_password": null,
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "adminuser"
                            }
                        ],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": true,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "westus",
                        "max_bid_price": -1,
                        "name": "example-machine",
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
                        "resource_group_name": "example-rg",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_F2",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "UbuntuServer",
                                "publisher": "Canonical",
                                "sku": "24.04-LTS",
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
                    "address": "azurerm_mssql_database.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "import": [],
                        "long_term_retention_policy": [],
                        "short_term_retention_policy": [],
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_mssql_database",
                    "values": {
                        "create_mode": "Default",
                        "elastic_pool_id": null,
                        "geo_backup_enabled": true,
                        "identity": [],
                        "import": [],
                        "name": "exampledb",
                        "recover_database_id": null,
                        "recovery_point_id": null,
                        "restore_dropped_database_id": null,
                        "restore_long_term_retention_backup_id": null,
                        "storage_account_type": "Geo",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_enabled": true,
                        "transparent_data_encryption_key_automatic_rotation_enabled": false,
                        "transparent_data_encryption_key_vault_key_id": null
                    }
                },
                {
                    "address": "azurerm_mssql_server.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "administrator_login_password": true,
                        "azuread_administrator": [],
                        "identity": [],
                        "restorable_dropped_database_ids": []
                    },
                    "type": "azurerm_mssql_server",
                    "values": {
                        "administrator_login": "sqladmin",
                        "administrator_login_password": "Strong!Passw0rd",
                        "azuread_administrator": [],
                        "connection_policy": "Default",
                        "identity": [],
                        "location": "westus",
                        "minimum_tls_version": "1.2",
                        "name": "example-sqlserver",
                        "outbound_network_restriction_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_key_vault_key_id": null,
                        "version": "12.0"
                    }
                },
                {
                    "address": "azurerm_network_interface.example",
                    "mode": "managed",
                    "name": "example",
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
                                "name": "internal",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westus",
                        "name": "example-nic",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "westus",
                        "name": "example-nsg",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": []
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "name": "privatelink.database.windows.net",
                        "resource_group_name": "example-rg",
                        "tags": null,
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
                        "name": "example-pdzvnetlink",
                        "private_dns_zone_name": "privatelink.database.windows.net",
                        "registration_enabled": false,
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
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
                            {}
                        ]
                    },
                    "type": "azurerm_private_endpoint",
                    "values": {
                        "custom_network_interface_name": null,
                        "ip_configuration": [],
                        "location": "westus",
                        "name": "example-private-endpoint",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "example-privateserviceconnection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": null
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Dynamic",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "westus",
                        "name": "example-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "example-rg",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_redis_cache.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "patch_schedule": [],
                        "primary_access_key": true,
                        "primary_connection_string": true,
                        "redis_configuration": [
                            {
                                "aof_storage_connection_string_0": true,
                                "aof_storage_connection_string_1": true,
                                "rdb_storage_connection_string": true
                            }
                        ],
                        "secondary_access_key": true,
                        "secondary_connection_string": true
                    },
                    "type": "azurerm_redis_cache",
                    "values": {
                        "capacity": 0,
                        "enable_non_ssl_port": false,
                        "family": "C",
                        "identity": [],
                        "location": "westus",
                        "minimum_tls_version": "1.2",
                        "name": "example-redis",
                        "patch_schedule": [],
                        "public_network_access_enabled": true,
                        "redis_configuration": [
                            {
                                "active_directory_authentication_enabled": null,
                                "aof_backup_enabled": null,
                                "aof_storage_connection_string_0": null,
                                "aof_storage_connection_string_1": null,
                                "data_persistence_authentication_method": "SAS",
                                "enable_authentication": true,
                                "maxmemory_policy": "volatile-lru",
                                "notify_keyspace_events": null,
                                "rdb_backup_enabled": null,
                                "rdb_backup_frequency": null,
                                "rdb_backup_max_snapshot_count": null,
                                "rdb_storage_connection_string": null,
                                "storage_account_subscription_id": null
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "shard_count": null,
                        "sku_name": "Basic",
                        "subnet_id": null,
                        "tags": null,
                        "tenant_settings": null,
                        "timeouts": null,
                        "zones": null
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
                        "location": "westus",
                        "managed_by": null,
                        "name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.endpoints",
                    "mode": "managed",
                    "name": "endpoints",
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
                            "10.0.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "endpoints-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet.gateway",
                    "mode": "managed",
                    "name": "gateway",
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
                        "name": "gateway-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet.vm",
                    "mode": "managed",
                    "name": "vm",
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
                        "name": "vm-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.endpoints",
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.gateway",
                    "mode": "managed",
                    "name": "gateway",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.vm",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
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
                            "10.0.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westus",
                        "name": "example-network",
                        "resource_group_name": "example-rg",
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
                "name"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.endpoints"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_interface.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.gateway"
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
            "resource": "azurerm_key_vault.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_mssql_server.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_private_dns_zone.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.vm"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "azurerm_linux_virtual_machine.example"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.example"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.example",
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
                            "name": "example-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "example-backend-http-settings",
                            "path": "/",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
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
                            "name": "frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "https-port",
                            "port": 443
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "example-gateway-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend-ip",
                            "frontend_port_name": "https-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "example-listener",
                            "protocol": "Https",
                            "require_sni": null,
                            "ssl_certificate_name": "example-ssl-cert",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus",
                    "name": "example-appgateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "example-backend-pool",
                            "backend_http_settings_name": "example-backend-http-settings",
                            "http_listener_name": "example-listener",
                            "name": "example-routing-rule",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "example-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_Small",
                            "tier": "Standard"
                        }
                    ],
                    "ssl_certificate": [
                        {
                            "data": "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",
                            "key_vault_secret_id": "",
                            "name": "example-ssl-cert",
                            "password": "export"
                        }
                    ],
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
                    "ssl_certificate": true,
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
                    "ssl_certificate": [
                        {
                            "id": true,
                            "public_cert_data": true
                        }
                    ],
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_key_vault.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "westus",
                    "name": "example-keyvault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "example-rg",
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_key_vault_secret.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "sql-password",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "Strong!Passw0rd"
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "azurerm_linux_virtual_machine.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": null,
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "adminuser"
                        }
                    ],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": true,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "westus",
                    "max_bid_price": -1,
                    "name": "example-machine",
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
                    "resource_group_name": "example-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_F2",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "UbuntuServer",
                            "publisher": "Canonical",
                            "sku": "24.04-LTS",
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
                    "admin_ssh_key": [
                        {}
                    ],
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
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_mssql_database.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_mode": "Default",
                    "elastic_pool_id": null,
                    "geo_backup_enabled": true,
                    "identity": [],
                    "import": [],
                    "name": "exampledb",
                    "recover_database_id": null,
                    "recovery_point_id": null,
                    "restore_dropped_database_id": null,
                    "restore_long_term_retention_backup_id": null,
                    "storage_account_type": "Geo",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_enabled": true,
                    "transparent_data_encryption_key_automatic_rotation_enabled": false,
                    "transparent_data_encryption_key_vault_key_id": null
                },
                "after_sensitive": {
                    "identity": [],
                    "import": [],
                    "long_term_retention_policy": [],
                    "short_term_retention_policy": [],
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "auto_pause_delay_in_minutes": true,
                    "collation": true,
                    "creation_source_database_id": true,
                    "enclave_type": true,
                    "id": true,
                    "identity": [],
                    "import": [],
                    "ledger_enabled": true,
                    "license_type": true,
                    "long_term_retention_policy": true,
                    "maintenance_configuration_name": true,
                    "max_size_gb": true,
                    "min_capacity": true,
                    "read_replica_count": true,
                    "read_scale": true,
                    "restore_point_in_time": true,
                    "sample_name": true,
                    "secondary_type": true,
                    "server_id": true,
                    "short_term_retention_policy": true,
                    "sku_name": true,
                    "threat_detection_policy": true,
                    "zone_redundant": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_database"
        },
        {
            "address": "azurerm_mssql_server.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "sqladmin",
                    "administrator_login_password": "Strong!Passw0rd",
                    "azuread_administrator": [],
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "westus",
                    "minimum_tls_version": "1.2",
                    "name": "example-sqlserver",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_key_vault_key_id": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "azuread_administrator": [],
                    "identity": [],
                    "restorable_dropped_database_ids": []
                },
                "after_unknown": {
                    "azuread_administrator": [],
                    "fully_qualified_domain_name": true,
                    "id": true,
                    "identity": [],
                    "primary_user_assigned_identity_id": true,
                    "restorable_dropped_database_ids": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
        },
        {
            "address": "azurerm_network_interface.example",
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
                            "name": "internal",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westus",
                    "name": "example-nic",
                    "resource_group_name": "example-rg",
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
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_security_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus",
                    "name": "example-nsg",
                    "resource_group_name": "example-rg",
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_private_dns_zone.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "privatelink.database.windows.net",
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": []
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "number_of_record_sets": true,
                    "soa_record": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
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
                    "name": "example-pdzvnetlink",
                    "private_dns_zone_name": "privatelink.database.windows.net",
                    "registration_enabled": false,
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
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
            "address": "azurerm_private_endpoint.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "westus",
                    "name": "example-private-endpoint",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "example-privateserviceconnection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": null
                        }
                    ],
                    "resource_group_name": "example-rg",
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
                        {}
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
                            "private_ip_address": true
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
            "address": "azurerm_public_ip.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Dynamic",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": null,
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "westus",
                    "name": "example-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "example-rg",
                    "reverse_fqdn": null,
                    "sku": "Basic",
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_redis_cache.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "capacity": 0,
                    "enable_non_ssl_port": false,
                    "family": "C",
                    "identity": [],
                    "location": "westus",
                    "minimum_tls_version": "1.2",
                    "name": "example-redis",
                    "patch_schedule": [],
                    "public_network_access_enabled": true,
                    "redis_configuration": [
                        {
                            "active_directory_authentication_enabled": null,
                            "aof_backup_enabled": null,
                            "aof_storage_connection_string_0": null,
                            "aof_storage_connection_string_1": null,
                            "data_persistence_authentication_method": "SAS",
                            "enable_authentication": true,
                            "maxmemory_policy": "volatile-lru",
                            "notify_keyspace_events": null,
                            "rdb_backup_enabled": null,
                            "rdb_backup_frequency": null,
                            "rdb_backup_max_snapshot_count": null,
                            "rdb_storage_connection_string": null,
                            "storage_account_subscription_id": null
                        }
                    ],
                    "resource_group_name": "example-rg",
                    "shard_count": null,
                    "sku_name": "Basic",
                    "subnet_id": null,
                    "tags": null,
                    "tenant_settings": null,
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {
                    "identity": [],
                    "patch_schedule": [],
                    "primary_access_key": true,
                    "primary_connection_string": true,
                    "redis_configuration": [
                        {
                            "aof_storage_connection_string_0": true,
                            "aof_storage_connection_string_1": true,
                            "rdb_storage_connection_string": true
                        }
                    ],
                    "secondary_access_key": true,
                    "secondary_connection_string": true
                },
                "after_unknown": {
                    "hostname": true,
                    "id": true,
                    "identity": [],
                    "non_ssl_port_enabled": true,
                    "patch_schedule": [],
                    "port": true,
                    "primary_access_key": true,
                    "primary_connection_string": true,
                    "private_static_ip_address": true,
                    "redis_configuration": [
                        {
                            "authentication_enabled": true,
                            "maxclients": true,
                            "maxfragmentationmemory_reserved": true,
                            "maxmemory_delta": true,
                            "maxmemory_reserved": true
                        }
                    ],
                    "redis_version": true,
                    "replicas_per_master": true,
                    "replicas_per_primary": true,
                    "secondary_access_key": true,
                    "secondary_connection_string": true,
                    "ssl_port": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_redis_cache"
        },
        {
            "address": "azurerm_resource_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus",
                    "managed_by": null,
                    "name": "example-rg",
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
            "address": "azurerm_subnet.endpoints",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "endpoints-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
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
            "name": "endpoints",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.gateway",
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
                    "name": "gateway-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
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
            "name": "gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.vm",
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
                    "name": "vm-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
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
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.endpoints",
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
            "name": "endpoints",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.gateway",
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
            "name": "gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.vm",
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
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_network.example",
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
                    "location": "westus",
                    "name": "example-network",
                    "resource_group_name": "example-rg",
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
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:09:03Z"
}