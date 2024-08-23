
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
            "module_calls": {
                "appgateway": {
                    "depends_on": [
                        "module.subnet"
                    ],
                    "expressions": {
                        "appgw-name": {
                            "references": [
                                "var.appgw-name"
                            ]
                        },
                        "backend_http_port": {
                            "references": [
                                "var.backend_http_port"
                            ]
                        },
                        "capacity": {
                            "references": [
                                "var.capacity"
                            ]
                        },
                        "frontend_port": {
                            "references": [
                                "var.frontend_port"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.resource_group_location",
                                "module.resource_group"
                            ]
                        },
                        "priority": {
                            "references": [
                                "var.priority"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.resource_group_name",
                                "module.resource_group"
                            ]
                        },
                        "sku_name": {
                            "references": [
                                "var.sku_name"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.subnet.appgw_subnet_id",
                                "module.subnet"
                            ]
                        },
                        "tier": {
                            "references": [
                                "var.tier"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "appgw_id": {
                                "description": "The ID of the Application Gateway.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.zenpay-appgw.id",
                                        "azurerm_application_gateway.zenpay-appgw"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.zenpay-appgw",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-backend-pool"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "appgw-backend-http-settings"
                                            },
                                            "port": {
                                                "references": [
                                                    "var.backend_http_port"
                                                ]
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-frontend-ip"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.appgw_pip.id",
                                                    "azurerm_public_ip.appgw_pip"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-http-port"
                                            },
                                            "port": {
                                                "references": [
                                                    "var.frontend_port"
                                                ]
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-ip-configuration"
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
                                                "constant_value": "appgw-frontend-ip"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "appgw-http-port"
                                            },
                                            "name": {
                                                "constant_value": "appgw-http-listener"
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
                                            "var.appgw-name"
                                        ]
                                    },
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "appgw-backend-pool"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "appgw-backend-http-settings"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "appgw-http-listener"
                                            },
                                            "name": {
                                                "constant_value": "appgw-routing-rule"
                                            },
                                            "priority": {
                                                "references": [
                                                    "var.priority"
                                                ]
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
                                                "references": [
                                                    "var.capacity"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.sku_name"
                                                ]
                                            },
                                            "tier": {
                                                "references": [
                                                    "var.tier"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "zenpay-appgw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            },
                            {
                                "address": "azurerm_public_ip.appgw_pip",
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
                                        "constant_value": "appgw-pip"
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
                                "name": "appgw_pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "appgw-name": {
                                "description": "The app gateway name"
                            },
                            "backend_http_port": {
                                "description": "The backend HTTP port for the Application Gateway."
                            },
                            "capacity": {
                                "default": 2,
                                "description": "The capacity of the Application Gateway."
                            },
                            "frontend_port": {
                                "description": "The frontend port for the Application Gateway."
                            },
                            "location": {
                                "description": "The location/region where the Application Gateway will be deployed."
                            },
                            "priority": {
                                "description": "The priority of the routing rule."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group in which the Application Gateway is created."
                            },
                            "sku_name": {
                                "description": "The SKU name of the Application Gateway."
                            },
                            "subnet_id": {
                                "description": "The ID of the subnet in which the Application Gateway is deployed."
                            },
                            "tier": {
                                "description": "The tier of the Application Gateway SKU."
                            }
                        }
                    },
                    "source": "./modules/applicationgateway"
                },
                "backup_and_security": {
                    "expressions": {
                        "backup_policy_name": {
                            "references": [
                                "var.backup_policy_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.resource_group_location",
                                "module.resource_group"
                            ]
                        },
                        "log-analytics-name": {
                            "references": [
                                "var.log-analytics-name"
                            ]
                        },
                        "recovery_vault_name": {
                            "references": [
                                "var.recovery_vault_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.resource_group_name",
                                "module.resource_group"
                            ]
                        },
                        "rg_scope": {
                            "references": [
                                "module.resource_group.resource_group_id",
                                "module.resource_group"
                            ]
                        },
                        "security-contact-email": {
                            "references": [
                                "var.security-contact-email"
                            ]
                        },
                        "security-contact-phone": {
                            "references": [
                                "var.security-contact-phone"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "backup_policy_id": {
                                "description": "The ID of the VM Backup Policy.",
                                "expression": {
                                    "references": [
                                        "azurerm_backup_policy_vm.vm_backup_policy.id",
                                        "azurerm_backup_policy_vm.vm_backup_policy"
                                    ]
                                }
                            },
                            "log_analytics_workspace_id": {
                                "description": "The ID of the Log Analytics Workspace.",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.securitypostlog.id",
                                        "azurerm_log_analytics_workspace.securitypostlog"
                                    ]
                                }
                            },
                            "recovery_vault_id": {
                                "description": "The ID of the Recovery Services Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_recovery_services_vault.zenpay_recovery_vault.id",
                                        "azurerm_recovery_services_vault.zenpay_recovery_vault"
                                    ]
                                }
                            },
                            "security_center_workspace_id": {
                                "description": "The ID of the Security Center Workspace.",
                                "expression": {
                                    "references": [
                                        "azurerm_security_center_workspace.securityposturews.id",
                                        "azurerm_security_center_workspace.securityposturews"
                                    ]
                                }
                            },
                            "security_contact_id": {
                                "description": "The ID of the Security Center Contact.",
                                "expression": {
                                    "references": [
                                        "azurerm_security_center_contact.security_contact.id",
                                        "azurerm_security_center_contact.security_contact"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_backup_policy_vm.vm_backup_policy",
                                "expressions": {
                                    "backup": [
                                        {
                                            "frequency": {
                                                "constant_value": "Daily"
                                            },
                                            "time": {
                                                "constant_value": "23:00"
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.backup_policy_name"
                                        ]
                                    },
                                    "recovery_vault_name": {
                                        "references": [
                                            "azurerm_recovery_services_vault.zenpay_recovery_vault.name",
                                            "azurerm_recovery_services_vault.zenpay_recovery_vault"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_daily": [
                                        {
                                            "count": {
                                                "constant_value": 10
                                            }
                                        }
                                    ],
                                    "retention_monthly": [
                                        {
                                            "count": {
                                                "constant_value": 7
                                            },
                                            "weekdays": {
                                                "constant_value": [
                                                    "Sunday",
                                                    "Wednesday"
                                                ]
                                            },
                                            "weeks": {
                                                "constant_value": [
                                                    "First",
                                                    "Last"
                                                ]
                                            }
                                        }
                                    ],
                                    "retention_weekly": [
                                        {
                                            "count": {
                                                "constant_value": 42
                                            },
                                            "weekdays": {
                                                "constant_value": [
                                                    "Sunday",
                                                    "Wednesday",
                                                    "Friday",
                                                    "Saturday"
                                                ]
                                            }
                                        }
                                    ],
                                    "timezone": {
                                        "constant_value": "UTC"
                                    }
                                },
                                "mode": "managed",
                                "name": "vm_backup_policy",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_backup_policy_vm"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.securitypostlog",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.log-analytics-name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_in_days": {
                                        "constant_value": 30
                                    },
                                    "sku": {
                                        "constant_value": "PerGB2018"
                                    }
                                },
                                "mode": "managed",
                                "name": "securitypostlog",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "azurerm_recovery_services_vault.zenpay_recovery_vault",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.recovery_vault_name"
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
                                "name": "zenpay_recovery_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_recovery_services_vault"
                            },
                            {
                                "address": "azurerm_security_center_auto_provisioning.auto_provisioning",
                                "expressions": {
                                    "auto_provision": {
                                        "constant_value": "On"
                                    }
                                },
                                "mode": "managed",
                                "name": "auto_provisioning",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_security_center_auto_provisioning"
                            },
                            {
                                "address": "azurerm_security_center_contact.security_contact",
                                "expressions": {
                                    "alert_notifications": {
                                        "constant_value": true
                                    },
                                    "alerts_to_admins": {
                                        "constant_value": true
                                    },
                                    "email": {
                                        "references": [
                                            "var.security-contact-email"
                                        ]
                                    },
                                    "phone": {
                                        "references": [
                                            "var.security-contact-phone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "security_contact",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_security_center_contact"
                            },
                            {
                                "address": "azurerm_security_center_workspace.securityposturews",
                                "expressions": {
                                    "scope": {
                                        "references": [
                                            "var.rg_scope"
                                        ]
                                    },
                                    "workspace_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.securitypostlog.id",
                                            "azurerm_log_analytics_workspace.securitypostlog"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "securityposturews",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_security_center_workspace"
                            }
                        ],
                        "variables": {
                            "backup_policy_name": {
                                "description": "The name of the Backup Policy for VMs."
                            },
                            "location": {
                                "description": "The location/region where resources will be deployed."
                            },
                            "log-analytics-name": {
                                "description": "The name of the Log Analytics Workspace."
                            },
                            "recovery_vault_name": {
                                "description": "The name of the Recovery Services Vault."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group in which resources are created."
                            },
                            "rg_scope": {
                                "description": "The Resource group id"
                            },
                            "security-contact-email": {
                                "description": "The email address for the security center contact."
                            },
                            "security-contact-phone": {
                                "description": "The phone number for the security center contact."
                            }
                        }
                    },
                    "source": "./modules/backup-security"
                },
                "loadbalancer": {
                    "expressions": {
                        "backend_address_pool_name": {
                            "references": [
                                "var.backend_address_pool_name"
                            ]
                        },
                        "frontend_ip_configuration_name": {
                            "references": [
                                "var.frontend_ip_configuration_name"
                            ]
                        },
                        "lb_name": {
                            "references": [
                                "var.lb_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.resource_group_location",
                                "module.resource_group"
                            ]
                        },
                        "probe_name": {
                            "references": [
                                "var.probe_name"
                            ]
                        },
                        "public_ip_name": {
                            "references": [
                                "var.public_ip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.resource_group_name",
                                "module.resource_group"
                            ]
                        },
                        "rule_name": {
                            "references": [
                                "var.rule_name"
                            ]
                        },
                        "web_nic_ids": {
                            "references": [
                                "var.web_nic_ids"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "lb_backend_address_pool_id": {
                                "description": "The ID of the backend address pool of the load balancer.",
                                "expression": {
                                    "references": [
                                        "azurerm_lb_backend_address_pool.web_lb_backend.id",
                                        "azurerm_lb_backend_address_pool.web_lb_backend"
                                    ]
                                }
                            },
                            "lb_id": {
                                "description": "The ID of the load balancer.",
                                "expression": {
                                    "references": [
                                        "azurerm_lb.dev_zenpay_web_lb.id",
                                        "azurerm_lb.dev_zenpay_web_lb"
                                    ]
                                }
                            },
                            "lb_public_ip_id": {
                                "description": "The ID of the public IP associated with the load balancer.",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.lb.id",
                                        "azurerm_public_ip.lb"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_lb.dev_zenpay_web_lb",
                                "expressions": {
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.frontend_ip_configuration_name"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.lb.id",
                                                    "azurerm_public_ip.lb"
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
                                            "var.lb_name"
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
                                "name": "dev_zenpay_web_lb",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb"
                            },
                            {
                                "address": "azurerm_lb_backend_address_pool.web_lb_backend",
                                "expressions": {
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.dev_zenpay_web_lb.id",
                                            "azurerm_lb.dev_zenpay_web_lb"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.backend_address_pool_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_backend",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_backend_address_pool"
                            },
                            {
                                "address": "azurerm_lb_probe.web_lb_probe",
                                "expressions": {
                                    "interval_in_seconds": {
                                        "constant_value": 15
                                    },
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.dev_zenpay_web_lb.id",
                                            "azurerm_lb.dev_zenpay_web_lb"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.probe_name"
                                        ]
                                    },
                                    "number_of_probes": {
                                        "constant_value": 2
                                    },
                                    "port": {
                                        "constant_value": 80
                                    },
                                    "protocol": {
                                        "constant_value": "Http"
                                    },
                                    "request_path": {
                                        "constant_value": "/"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_probe",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_probe"
                            },
                            {
                                "address": "azurerm_lb_rule.web_lb_rule",
                                "expressions": {
                                    "backend_address_pool_ids": {
                                        "references": [
                                            "azurerm_lb_backend_address_pool.web_lb_backend.id",
                                            "azurerm_lb_backend_address_pool.web_lb_backend"
                                        ]
                                    },
                                    "backend_port": {
                                        "constant_value": 80
                                    },
                                    "frontend_ip_configuration_name": {
                                        "references": [
                                            "azurerm_lb.dev_zenpay_web_lb.frontend_ip_configuration[0].name",
                                            "azurerm_lb.dev_zenpay_web_lb.frontend_ip_configuration[0]",
                                            "azurerm_lb.dev_zenpay_web_lb.frontend_ip_configuration",
                                            "azurerm_lb.dev_zenpay_web_lb"
                                        ]
                                    },
                                    "frontend_port": {
                                        "constant_value": 80
                                    },
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.dev_zenpay_web_lb.id",
                                            "azurerm_lb.dev_zenpay_web_lb"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rule_name"
                                        ]
                                    },
                                    "probe_id": {
                                        "references": [
                                            "azurerm_lb_probe.web_lb_probe.id",
                                            "azurerm_lb_probe.web_lb_probe"
                                        ]
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_rule"
                            },
                            {
                                "address": "azurerm_public_ip.lb",
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
                                "name": "lb",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "backend_address_pool_name": {
                                "description": "The name of the backend address pool."
                            },
                            "frontend_ip_configuration_name": {
                                "description": "The name of the frontend IP configuration."
                            },
                            "lb_name": {
                                "description": "The name of the load balancer."
                            },
                            "location": {
                                "description": "The location/region where the resources will be deployed."
                            },
                            "probe_name": {
                                "description": "The name of the load balancer probe."
                            },
                            "public_ip_name": {
                                "description": "The name of the public IP for the load balancer."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group in which the resources are created."
                            },
                            "rule_name": {
                                "description": "The name of the load balancer rule."
                            },
                            "web_nic_ids": {
                                "description": "A list of network interface IDs for the backend pool."
                            }
                        }
                    },
                    "source": "./modules/loadbalancer"
                },
                "nsg": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resource_group.resource_group_location",
                                "module.resource_group"
                            ]
                        },
                        "nsg_name": {
                            "references": [
                                "var.nsg_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.resource_group_name",
                                "module.resource_group"
                            ]
                        },
                        "web_subnet_address": {
                            "references": [
                                "var.web_subnet_address"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "db_nsg_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.dev_zenpay_db_nsg.id",
                                        "azurerm_network_security_group.dev_zenpay_db_nsg"
                                    ]
                                }
                            },
                            "web_nsg_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.dev_zenpay_web_nsg.id",
                                        "azurerm_network_security_group.dev_zenpay_web_nsg"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.dev_zenpay_db_nsg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "db-nsg"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "security_rule": {
                                        "references": [
                                            "var.web_subnet_address"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev_zenpay_db_nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            },
                            {
                                "address": "azurerm_network_security_group.dev_zenpay_web_nsg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nsg_name"
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
                                                "destination_port_range": "80",
                                                "destination_port_ranges": null,
                                                "direction": "Inbound",
                                                "name": "Allow-HTTP",
                                                "priority": 1001,
                                                "protocol": "Tcp",
                                                "source_address_prefix": "*",
                                                "source_address_prefixes": null,
                                                "source_application_security_group_ids": null,
                                                "source_port_range": "*",
                                                "source_port_ranges": null
                                            },
                                            {
                                                "access": "Allow",
                                                "description": null,
                                                "destination_address_prefix": "*",
                                                "destination_address_prefixes": null,
                                                "destination_application_security_group_ids": null,
                                                "destination_port_range": "443",
                                                "destination_port_ranges": null,
                                                "direction": "Inbound",
                                                "name": "Allow-HTTPS",
                                                "priority": 1002,
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
                                "name": "dev_zenpay_web_nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "Location of the network security group"
                            },
                            "nsg_name": {
                                "description": "Name of the network security group"
                            },
                            "resource_group_name": {
                                "description": "Name of the resource group"
                            },
                            "web_subnet_address": {
                                "description": "Address space for the web tier subnet"
                            }
                        }
                    },
                    "source": "./modules/networksecuritygroup"
                },
                "resource_group": {
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "resource_group_id": {
                                "description": "The ID of the Resource Group",
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.dev-zenpay-rg.id",
                                        "azurerm_resource_group.dev-zenpay-rg"
                                    ]
                                }
                            },
                            "resource_group_location": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.dev-zenpay-rg.location",
                                        "azurerm_resource_group.dev-zenpay-rg"
                                    ]
                                }
                            },
                            "resource_group_name": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.dev-zenpay-rg.name",
                                        "azurerm_resource_group.dev-zenpay-rg"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_resource_group.dev-zenpay-rg",
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
                                "name": "dev-zenpay-rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "The location of the resource group"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group"
                            }
                        }
                    },
                    "source": "./modules/resourcegroup"
                },
                "sql": {
                    "depends_on": [
                        "module.resource_group",
                        "module.nsg",
                        "module.backup_and_security",
                        "module.appgateway"
                    ],
                    "expressions": {
                        "administrator_login": {
                            "references": [
                                "var.administrator_login"
                            ]
                        },
                        "administrator_login_password": {
                            "references": [
                                "var.administrator_login_password"
                            ]
                        },
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
                                "var.resource_group_name"
                            ]
                        },
                        "sql_server_name": {
                            "references": [
                                "var.sql_server_name"
                            ]
                        },
                        "transparent_data_encryption_key_name": {
                            "references": [
                                "var.transparent_data_encryption_key_name"
                            ]
                        },
                        "user_assigned_identity_name": {
                            "references": [
                                "var.user_assigned_identity_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "key_vault_id": {
                                "description": "The ID of the Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.zenpay_key_vault.id",
                                        "azurerm_key_vault.zenpay_key_vault"
                                    ]
                                }
                            },
                            "key_vault_key_id": {
                                "description": "The ID of the Key Vault Key.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault_key.zenpay_key_vault_key.id",
                                        "azurerm_key_vault_key.zenpay_key_vault_key"
                                    ]
                                }
                            },
                            "sql_server_id": {
                                "description": "The ID of the SQL Server.",
                                "expression": {
                                    "references": [
                                        "azurerm_mssql_server.zenpaydatabase.id",
                                        "azurerm_mssql_server.zenpaydatabase"
                                    ]
                                }
                            },
                            "user_assigned_identity_id": {
                                "description": "The ID of the User Assigned Identity.",
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.zenpay_identity.id",
                                        "azurerm_user_assigned_identity.zenpay_identity"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_key_vault.zenpay_key_vault",
                                "expressions": {
                                    "access_policy": {
                                        "references": [
                                            "data.azurerm_client_config.current.object_id",
                                            "data.azurerm_client_config.current",
                                            "data.azurerm_client_config.current.tenant_id",
                                            "data.azurerm_client_config.current",
                                            "azurerm_user_assigned_identity.zenpay_identity.tenant_id",
                                            "azurerm_user_assigned_identity.zenpay_identity",
                                            "azurerm_user_assigned_identity.zenpay_identity.principal_id",
                                            "azurerm_user_assigned_identity.zenpay_identity"
                                        ]
                                    },
                                    "enabled_for_disk_encryption": {
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
                                    "purge_protection_enabled": {
                                        "constant_value": true
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
                                            "azurerm_user_assigned_identity.zenpay_identity.tenant_id",
                                            "azurerm_user_assigned_identity.zenpay_identity"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_key_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_key_vault"
                            },
                            {
                                "address": "azurerm_key_vault_key.zenpay_key_vault_key",
                                "depends_on": [
                                    "azurerm_key_vault.zenpay_key_vault"
                                ],
                                "expressions": {
                                    "key_opts": {
                                        "constant_value": [
                                            "unwrapKey",
                                            "wrapKey"
                                        ]
                                    },
                                    "key_size": {
                                        "constant_value": 2048
                                    },
                                    "key_type": {
                                        "constant_value": "RSA"
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.zenpay_key_vault.id",
                                            "azurerm_key_vault.zenpay_key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.transparent_data_encryption_key_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_key_vault_key",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_key"
                            },
                            {
                                "address": "azurerm_mssql_server.zenpaydatabase",
                                "expressions": {
                                    "administrator_login": {
                                        "references": [
                                            "var.administrator_login"
                                        ]
                                    },
                                    "administrator_login_password": {
                                        "references": [
                                            "var.administrator_login_password"
                                        ]
                                    },
                                    "azuread_administrator": [
                                        {
                                            "login_username": {
                                                "references": [
                                                    "azurerm_user_assigned_identity.zenpay_identity.name",
                                                    "azurerm_user_assigned_identity.zenpay_identity"
                                                ]
                                            },
                                            "object_id": {
                                                "references": [
                                                    "azurerm_user_assigned_identity.zenpay_identity.principal_id",
                                                    "azurerm_user_assigned_identity.zenpay_identity"
                                                ]
                                            }
                                        }
                                    ],
                                    "identity": [
                                        {
                                            "identity_ids": {
                                                "references": [
                                                    "azurerm_user_assigned_identity.zenpay_identity.id",
                                                    "azurerm_user_assigned_identity.zenpay_identity"
                                                ]
                                            },
                                            "type": {
                                                "constant_value": "UserAssigned"
                                            }
                                        }
                                    ],
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "minimum_tls_version": {
                                        "constant_value": "1.2"
                                    },
                                    "name": {
                                        "references": [
                                            "var.sql_server_name"
                                        ]
                                    },
                                    "primary_user_assigned_identity_id": {
                                        "references": [
                                            "azurerm_user_assigned_identity.zenpay_identity.id",
                                            "azurerm_user_assigned_identity.zenpay_identity"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "transparent_data_encryption_key_vault_key_id": {
                                        "references": [
                                            "azurerm_key_vault_key.zenpay_key_vault_key.id",
                                            "azurerm_key_vault_key.zenpay_key_vault_key"
                                        ]
                                    },
                                    "version": {
                                        "constant_value": "12.0"
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpaydatabase",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_mssql_server"
                            },
                            {
                                "address": "azurerm_user_assigned_identity.zenpay_identity",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.user_assigned_identity_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_identity",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_user_assigned_identity"
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
                            "administrator_login": {
                                "description": "The administrator login for the SQL Server."
                            },
                            "administrator_login_password": {
                                "description": "The administrator login password for the SQL Server."
                            },
                            "key_vault_name": {
                                "description": "The name of the Key Vault."
                            },
                            "location": {
                                "description": "The location/region where resources will be deployed."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group in which resources are created."
                            },
                            "sql_server_name": {
                                "description": "The name of the SQL Server."
                            },
                            "transparent_data_encryption_key_name": {
                                "description": "The name of the Key Vault key used for Transparent Data Encryption."
                            },
                            "user_assigned_identity_name": {
                                "description": "The name of the User Assigned Identity."
                            }
                        }
                    },
                    "source": "./modules/sql"
                },
                "subnet": {
                    "depends_on": [
                        "module.vnet"
                    ],
                    "expressions": {
                        "appgw_subnet_address": {
                            "references": [
                                "var.appgw_subnet_address"
                            ]
                        },
                        "db_subnet_address": {
                            "references": [
                                "var.db_subnet_address"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.vnet_name"
                            ]
                        },
                        "web_subnet_address": {
                            "references": [
                                "var.web_subnet_address"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "appgw_subnet_id": {
                                "description": "The ID of the application gateway subnet.",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.dev-zenpay-appgw.id",
                                        "azurerm_subnet.dev-zenpay-appgw"
                                    ]
                                }
                            },
                            "db_subnet_id": {
                                "description": "The ID of the database subnet.",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.dev-zenpay-db.id",
                                        "azurerm_subnet.dev-zenpay-db"
                                    ]
                                }
                            },
                            "web_subnet_id": {
                                "description": "The ID of the web subnet.",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.dev-zenpay-web.id",
                                        "azurerm_subnet.dev-zenpay-web"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_subnet.dev-zenpay-appgw",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.appgw_subnet_address"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "dev-appgw-subnet"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev-zenpay-appgw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.dev-zenpay-db",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.db_subnet_address"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "dev-db-subnet"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev-zenpay-db",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.dev-zenpay-web",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.web_subnet_address"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "dev-web-subnet"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev-zenpay-web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "appgw_subnet_address": {
                                "description": "Address space for the application gateway tier subnet"
                            },
                            "db_subnet_address": {
                                "description": "Address space for the database tier subnet"
                            },
                            "location": {
                                "description": "Location of the virtual network"
                            },
                            "resource_group_name": {
                                "description": "Name of the resource group"
                            },
                            "vnet_name": {
                                "description": "Name of the virtual network"
                            },
                            "web_subnet_address": {
                                "description": "Address space for the web tier subnet"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "vm": {
                    "depends_on": [
                        "module.subnet",
                        "module.nsg"
                    ],
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
                        "avset_name": {
                            "references": [
                                "var.avset_name"
                            ]
                        },
                        "db_os_disk": {
                            "references": [
                                "var.db_os_disk"
                            ]
                        },
                        "db_subnet_id": {
                            "references": [
                                "module.subnet.db_subnet_id",
                                "module.subnet"
                            ]
                        },
                        "db_vm_size": {
                            "references": [
                                "var.db_vm_size"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.resource_group_location",
                                "module.resource_group"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.resource_group_name",
                                "module.resource_group"
                            ]
                        },
                        "web_os_disk": {
                            "references": [
                                "var.web_os_disk"
                            ]
                        },
                        "web_subnet_id": {
                            "references": [
                                "module.subnet.web_subnet_id",
                                "module.subnet"
                            ]
                        },
                        "web_vm_count": {
                            "references": [
                                "var.web_vm_count"
                            ]
                        },
                        "web_vm_size": {
                            "references": [
                                "var.web_vm_size"
                            ]
                        },
                        "windows_image_offer": {
                            "references": [
                                "var.windows_image_offer"
                            ]
                        },
                        "windows_image_publisher": {
                            "references": [
                                "var.windows_image_publisher"
                            ]
                        },
                        "windows_image_sku": {
                            "references": [
                                "var.windows_image_sku"
                            ]
                        },
                        "windows_image_version": {
                            "references": [
                                "var.windows_image_version"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "db_nic_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.db.id",
                                        "azurerm_network_interface.db"
                                    ]
                                }
                            },
                            "db_vm_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_windows_virtual_machine.db.id",
                                        "azurerm_windows_virtual_machine.db"
                                    ]
                                }
                            },
                            "web_nic_ids": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.web"
                                    ]
                                }
                            },
                            "web_vm_ids": {
                                "expression": {
                                    "references": [
                                        "azurerm_windows_virtual_machine.web"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_availability_set.dev-zenpay-web",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "managed": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.avset_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev-zenpay-web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_availability_set"
                            },
                            {
                                "address": "azurerm_network_interface.db",
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
                                                    "var.db_subnet_id"
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
                                        "constant_value": "db-nic"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "db",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface.web",
                                "count_expression": {
                                    "references": [
                                        "var.web_vm_count"
                                    ]
                                },
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
                                                    "var.web_subnet_id"
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
                                            "count.index"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_windows_virtual_machine.db",
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
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "db-vm"
                                    },
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.db.id",
                                            "azurerm_network_interface.db"
                                        ]
                                    },
                                    "os_disk": [
                                        {
                                            "caching": {
                                                "constant_value": "ReadWrite"
                                            },
                                            "disk_size_gb": {
                                                "references": [
                                                    "var.db_os_disk"
                                                ]
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
                                            "var.db_vm_size"
                                        ]
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "references": [
                                                    "var.windows_image_offer"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.windows_image_publisher"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.windows_image_sku"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.windows_image_version"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "db",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_windows_virtual_machine"
                            },
                            {
                                "address": "azurerm_windows_virtual_machine.web",
                                "count_expression": {
                                    "references": [
                                        "var.web_vm_count"
                                    ]
                                },
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
                                            "azurerm_availability_set.dev-zenpay-web.id",
                                            "azurerm_availability_set.dev-zenpay-web"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "count.index"
                                        ]
                                    },
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.web",
                                            "count.index"
                                        ]
                                    },
                                    "os_disk": [
                                        {
                                            "caching": {
                                                "constant_value": "ReadWrite"
                                            },
                                            "disk_size_gb": {
                                                "references": [
                                                    "var.web_os_disk"
                                                ]
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
                                            "var.web_vm_size"
                                        ]
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "references": [
                                                    "var.windows_image_offer"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.windows_image_publisher"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.windows_image_sku"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.windows_image_version"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_windows_virtual_machine"
                            }
                        ],
                        "variables": {
                            "admin_password": {
                                "description": "Admin password for the VM"
                            },
                            "admin_username": {
                                "description": "Admin username for the VM"
                            },
                            "avset_name": {
                                "description": "Name of the availability set"
                            },
                            "db_os_disk": {
                                "description": "The db OS disk size in GB"
                            },
                            "db_subnet_id": {
                                "description": "ID of the database subnet"
                            },
                            "db_vm_size": {
                                "description": "The size of the DB VM"
                            },
                            "location": {
                                "description": "Location of the resources"
                            },
                            "resource_group_name": {
                                "description": "Name of the resource group"
                            },
                            "web_os_disk": {
                                "description": "The web OS disk size in GB"
                            },
                            "web_subnet_id": {
                                "description": "ID of the web subnet"
                            },
                            "web_vm_count": {
                                "description": "Number of web VMs"
                            },
                            "web_vm_size": {
                                "description": "The size of the VM"
                            },
                            "windows_image_offer": {
                                "description": "The image offer"
                            },
                            "windows_image_publisher": {
                                "description": "The image publisher"
                            },
                            "windows_image_sku": {
                                "description": "The image SKU"
                            },
                            "windows_image_version": {
                                "description": "The image version"
                            }
                        }
                    },
                    "source": "./modules/virtualmachine"
                },
                "vnet": {
                    "depends_on": [
                        "module.resource_group"
                    ],
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.vnet_address_space"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.vnet_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "vnet_address_space": {
                                "description": "The address space of the virtual network.",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.dev-zenpay-vnet.address_space",
                                        "azurerm_virtual_network.dev-zenpay-vnet"
                                    ]
                                }
                            },
                            "vnet_id": {
                                "description": "The ID of the virtual network.",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.dev-zenpay-vnet.id",
                                        "azurerm_virtual_network.dev-zenpay-vnet"
                                    ]
                                }
                            },
                            "vnet_name": {
                                "description": "The name of the virtual network.",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.dev-zenpay-vnet.name",
                                        "azurerm_virtual_network.dev-zenpay-vnet"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_virtual_network.dev-zenpay-vnet",
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
                                            "var.vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "dev-zenpay-vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "address_space": {
                                "description": "Address space for the virtual network"
                            },
                            "location": {
                                "description": "Location of the virtual network"
                            },
                            "resource_group_name": {
                                "description": "Name of the resource group"
                            },
                            "vnet_name": {
                                "description": "Name of the virtual network"
                            }
                        }
                    },
                    "source": "./modules/virtualnetwork"
                }
            },
            "resources": [
                {
                    "address": "data.azurerm_client_config.owner",
                    "mode": "data",
                    "name": "owner",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ],
            "variables": {
                "admin_password": {
                    "description": "Password for the virtual machine's administrator"
                },
                "admin_username": {
                    "description": "Username for the virtual machine's administrator"
                },
                "administrator_login": {
                    "description": "The administrator login for the SQL Server."
                },
                "administrator_login_password": {
                    "description": "The administrator login password for the SQL Server."
                },
                "appgw-name": {
                    "description": "The app gateway name"
                },
                "appgw_subnet_address": {
                    "description": "Address space for the app gateway tier subnet"
                },
                "avset_name": {
                    "description": "Name of the availability set"
                },
                "backend_address_pool_name": {
                    "description": "The name of the backend address pool."
                },
                "backend_http_port": {
                    "description": "The backend HTTP port for the Application Gateway."
                },
                "backup_policy_name": {
                    "description": "The backup policy name"
                },
                "capacity": {
                    "description": "The capacity of the Application Gateway."
                },
                "db_os_disk": {
                    "description": "Os disk size of the virtual machine for the database"
                },
                "db_subnet_address": {
                    "description": "Address space for the database tier subnet"
                },
                "db_vm_size": {
                    "description": "Size of the DB virtual machine"
                },
                "frontend_ip_configuration_name": {
                    "description": "The name of the frontend IP configuration."
                },
                "frontend_port": {
                    "description": "The frontend port for the Application Gateway."
                },
                "key_vault_name": {
                    "description": "The name of the Key Vault."
                },
                "lb_name": {
                    "description": "The name of the load balancer."
                },
                "location": {
                    "description": "Azure location for the resources"
                },
                "log-analytics-name": {
                    "description": "The log analytics name"
                },
                "nsg_name": {
                    "description": "Name of security group"
                },
                "priority": {
                    "description": "The priority of the routing rule."
                },
                "probe_name": {
                    "description": "The name of the load balancer probe."
                },
                "public_ip_name": {
                    "description": "The name of the public IP for the load balancer."
                },
                "recovery_vault_name": {
                    "description": "The recovery vault name"
                },
                "resource_group_name": {
                    "description": "Name of the resource group"
                },
                "rule_name": {
                    "description": "The name of the load balancer rule."
                },
                "security-contact-email": {
                    "description": "The security contact email"
                },
                "security-contact-phone": {
                    "description": "The security contact phone"
                },
                "sku_name": {
                    "description": "The SKU name of the Application Gateway."
                },
                "sql_server_name": {
                    "description": "The name of the SQL Server."
                },
                "tier": {
                    "description": "The tier of the Application Gateway SKU."
                },
                "transparent_data_encryption_key_name": {
                    "description": "The name of the Transparent Data Encryption Key."
                },
                "user_assigned_identity_name": {
                    "description": "The name of the User Assigned Identity."
                },
                "vnet_address_space": {
                    "description": "Address space for the Virtual Network"
                },
                "vnet_name": {
                    "description": "The Virtual network name"
                },
                "web_nic_ids": {
                    "default": [],
                    "description": "A list of network interface IDs for the backend pool."
                },
                "web_os_disk": {
                    "description": "Os disk size of the virtual machine for webapp"
                },
                "web_subnet_address": {
                    "description": "Address space for the web tier subnet"
                },
                "web_vm_count": {
                    "description": "Number of virtual machines to create"
                },
                "web_vm_size": {
                    "description": "Size of the virtual machine"
                },
                "windows_image_offer": {
                    "description": "Offer of the windows virtual machine image"
                },
                "windows_image_publisher": {
                    "description": "Publisher of the windows virtual machine image"
                },
                "windows_image_sku": {
                    "description": "SKU (version) of the windows virtual machine image"
                },
                "windows_image_version": {
                    "description": "version of the windows virtual machine image"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.appgateway",
                    "resources": [
                        {
                            "address": "module.appgateway.azurerm_application_gateway.zenpay-appgw",
                            "mode": "managed",
                            "name": "zenpay-appgw",
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
                                        "name": "appgw-backend-pool"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "appgw-backend-http-settings",
                                        "path": "",
                                        "pick_host_name_from_backend_address": false,
                                        "port": 80,
                                        "probe_name": "",
                                        "protocol": "Http",
                                        "request_timeout": 30,
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
                                        "name": "appgw-frontend-ip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "appgw-http-port",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appgw-ip-configuration"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "appgw-frontend-ip",
                                        "frontend_port_name": "appgw-http-port",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "appgw-http-listener",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "centralus",
                                "name": "zenpaygateway",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "appgw-backend-pool",
                                        "backend_http_settings_name": "appgw-backend-http-settings",
                                        "http_listener_name": "appgw-http-listener",
                                        "name": "appgw-routing-rule",
                                        "priority": 1,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "web-infra-rg",
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
                            "address": "module.appgateway.azurerm_public_ip.appgw_pip",
                            "mode": "managed",
                            "name": "appgw_pip",
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
                                "location": "centralus",
                                "name": "appgw-pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "web-infra-rg",
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
                    "address": "module.backup_and_security",
                    "resources": [
                        {
                            "address": "module.backup_and_security.azurerm_backup_policy_vm.vm_backup_policy",
                            "mode": "managed",
                            "name": "vm_backup_policy",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backup": [
                                    {}
                                ],
                                "instant_restore_resource_group": [],
                                "retention_daily": [
                                    {}
                                ],
                                "retention_monthly": [
                                    {
                                        "weekdays": [
                                            false,
                                            false
                                        ],
                                        "weeks": [
                                            false,
                                            false
                                        ]
                                    }
                                ],
                                "retention_weekly": [
                                    {
                                        "weekdays": [
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    }
                                ],
                                "retention_yearly": [],
                                "tiering_policy": []
                            },
                            "type": "azurerm_backup_policy_vm",
                            "values": {
                                "backup": [
                                    {
                                        "frequency": "Daily",
                                        "hour_duration": null,
                                        "hour_interval": null,
                                        "time": "23:00",
                                        "weekdays": null
                                    }
                                ],
                                "instant_restore_resource_group": [],
                                "name": "vm-backup-policy",
                                "policy_type": "V1",
                                "recovery_vault_name": "zenpayrecoveryvault",
                                "resource_group_name": "web-infra-rg",
                                "retention_daily": [
                                    {
                                        "count": 10
                                    }
                                ],
                                "retention_monthly": [
                                    {
                                        "count": 7,
                                        "days": null,
                                        "include_last_days": false,
                                        "weekdays": [
                                            "Sunday",
                                            "Wednesday"
                                        ],
                                        "weeks": [
                                            "First",
                                            "Last"
                                        ]
                                    }
                                ],
                                "retention_weekly": [
                                    {
                                        "count": 42,
                                        "weekdays": [
                                            "Friday",
                                            "Saturday",
                                            "Sunday",
                                            "Wednesday"
                                        ]
                                    }
                                ],
                                "retention_yearly": [],
                                "tiering_policy": [],
                                "timeouts": null,
                                "timezone": "UTC"
                            }
                        },
                        {
                            "address": "module.backup_and_security.azurerm_log_analytics_workspace.securitypostlog",
                            "mode": "managed",
                            "name": "securitypostlog",
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
                                "location": "centralus",
                                "name": "security-posture-log-analytics",
                                "reservation_capacity_in_gb_per_day": null,
                                "resource_group_name": "web-infra-rg",
                                "retention_in_days": 30,
                                "sku": "PerGB2018",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.backup_and_security.azurerm_recovery_services_vault.zenpay_recovery_vault",
                            "mode": "managed",
                            "name": "zenpay_recovery_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "encryption": [],
                                "identity": [],
                                "monitoring": []
                            },
                            "type": "azurerm_recovery_services_vault",
                            "values": {
                                "classic_vmware_replication_enabled": null,
                                "cross_region_restore_enabled": false,
                                "encryption": [],
                                "identity": [],
                                "location": "centralus",
                                "monitoring": [],
                                "name": "zenpayrecoveryvault",
                                "public_network_access_enabled": true,
                                "resource_group_name": "web-infra-rg",
                                "sku": "Standard",
                                "soft_delete_enabled": true,
                                "storage_mode_type": "GeoRedundant",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.backup_and_security.azurerm_security_center_auto_provisioning.auto_provisioning",
                            "mode": "managed",
                            "name": "auto_provisioning",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_auto_provisioning",
                            "values": {
                                "auto_provision": "On",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.backup_and_security.azurerm_security_center_contact.security_contact",
                            "mode": "managed",
                            "name": "security_contact",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_contact",
                            "values": {
                                "alert_notifications": true,
                                "alerts_to_admins": true,
                                "email": "midejoseph24@gmail.com",
                                "name": "default1",
                                "phone": "+2348122662392",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.backup_and_security.azurerm_security_center_workspace.securityposturews",
                            "mode": "managed",
                            "name": "securityposturews",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_workspace",
                            "values": {
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.loadbalancer",
                    "resources": [
                        {
                            "address": "module.loadbalancer.azurerm_lb.dev_zenpay_web_lb",
                            "mode": "managed",
                            "name": "dev_zenpay_web_lb",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "frontend_ip_configuration": [
                                    {
                                        "inbound_nat_rules": [],
                                        "load_balancer_rules": [],
                                        "outbound_rules": []
                                    }
                                ],
                                "private_ip_addresses": []
                            },
                            "type": "azurerm_lb",
                            "values": {
                                "edge_zone": null,
                                "frontend_ip_configuration": [
                                    {
                                        "name": "web-lb-frontend",
                                        "zones": null
                                    }
                                ],
                                "location": "centralus",
                                "name": "web-lb",
                                "resource_group_name": "web-infra-rg",
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend",
                            "mode": "managed",
                            "name": "web_lb_backend",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backend_ip_configurations": [],
                                "inbound_nat_rules": [],
                                "load_balancing_rules": [],
                                "outbound_rules": [],
                                "tunnel_interface": []
                            },
                            "type": "azurerm_lb_backend_address_pool",
                            "values": {
                                "name": "web-lb-backend",
                                "synchronous_mode": null,
                                "timeouts": null,
                                "tunnel_interface": [],
                                "virtual_network_id": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_probe.web_lb_probe",
                            "mode": "managed",
                            "name": "web_lb_probe",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "load_balancer_rules": []
                            },
                            "type": "azurerm_lb_probe",
                            "values": {
                                "interval_in_seconds": 15,
                                "name": "http-probe",
                                "number_of_probes": 2,
                                "port": 80,
                                "probe_threshold": 1,
                                "protocol": "Http",
                                "request_path": "/",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_rule.web_lb_rule",
                            "mode": "managed",
                            "name": "web_lb_rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backend_address_pool_ids": []
                            },
                            "type": "azurerm_lb_rule",
                            "values": {
                                "backend_port": 80,
                                "disable_outbound_snat": false,
                                "enable_floating_ip": false,
                                "enable_tcp_reset": null,
                                "frontend_ip_configuration_name": "web-lb-frontend",
                                "frontend_port": 80,
                                "name": "http-rule",
                                "protocol": "Tcp",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_public_ip.lb",
                            "mode": "managed",
                            "name": "lb",
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
                                "location": "centralus",
                                "name": "lb-public-ip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "web-infra-rg",
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
                    "address": "module.nsg",
                    "resources": [
                        {
                            "address": "module.nsg.azurerm_network_security_group.dev_zenpay_db_nsg",
                            "mode": "managed",
                            "name": "dev_zenpay_db_nsg",
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
                                "location": "centralus",
                                "name": "db-nsg",
                                "resource_group_name": "web-infra-rg",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "1433",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "Allow-SQL",
                                        "priority": 1001,
                                        "protocol": "Tcp",
                                        "source_address_prefix": "10.0.1.0/24",
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
                            "address": "module.nsg.azurerm_network_security_group.dev_zenpay_web_nsg",
                            "mode": "managed",
                            "name": "dev_zenpay_web_nsg",
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
                                "location": "centralus",
                                "name": "webnsg",
                                "resource_group_name": "web-infra-rg",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "443",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "Allow-HTTPS",
                                        "priority": 1002,
                                        "protocol": "Tcp",
                                        "source_address_prefix": "*",
                                        "source_address_prefixes": [],
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
                                        "destination_port_range": "80",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "Allow-HTTP",
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
                },
                {
                    "address": "module.resource_group",
                    "resources": [
                        {
                            "address": "module.resource_group.azurerm_resource_group.dev-zenpay-rg",
                            "mode": "managed",
                            "name": "dev-zenpay-rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "centralus",
                                "managed_by": null,
                                "name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.sql",
                    "resources": [
                        {
                            "address": "module.sql.azurerm_key_vault.zenpay_key_vault",
                            "mode": "managed",
                            "name": "zenpay_key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [
                                    {
                                        "key_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    },
                                    {
                                        "key_permissions": [
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
                                        "certificate_permissions": null,
                                        "key_permissions": [
                                            "Get",
                                            "List",
                                            "Create",
                                            "Delete",
                                            "Update",
                                            "Recover",
                                            "Purge",
                                            "GetRotationPolicy"
                                        ],
                                        "secret_permissions": null,
                                        "storage_permissions": null
                                    },
                                    {
                                        "application_id": null,
                                        "certificate_permissions": null,
                                        "key_permissions": [
                                            "Get",
                                            "WrapKey",
                                            "UnwrapKey"
                                        ],
                                        "secret_permissions": null,
                                        "storage_permissions": null
                                    }
                                ],
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": true,
                                "enabled_for_template_deployment": null,
                                "location": "centralus",
                                "name": "zenpaykeyweb46example",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": true,
                                "resource_group_name": "web-infra-rg",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.sql.azurerm_key_vault_key.zenpay_key_vault_key",
                            "mode": "managed",
                            "name": "zenpay_key_vault_key",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "key_opts": [
                                    false,
                                    false
                                ],
                                "rotation_policy": []
                            },
                            "type": "azurerm_key_vault_key",
                            "values": {
                                "expiration_date": null,
                                "key_opts": [
                                    "unwrapKey",
                                    "wrapKey"
                                ],
                                "key_size": 2048,
                                "key_type": "RSA",
                                "name": "nerwtbde",
                                "not_before_date": null,
                                "rotation_policy": [],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.sql.azurerm_mssql_server.zenpaydatabase",
                            "mode": "managed",
                            "name": "zenpaydatabase",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "administrator_login_password": true,
                                "azuread_administrator": [
                                    {}
                                ],
                                "identity": [
                                    {
                                        "identity_ids": []
                                    }
                                ],
                                "restorable_dropped_database_ids": []
                            },
                            "type": "azurerm_mssql_server",
                            "values": {
                                "administrator_login": "adminuser",
                                "administrator_login_password": "ySafe11@@@567",
                                "azuread_administrator": [
                                    {
                                        "login_username": "zenpaymanaagedid"
                                    }
                                ],
                                "connection_policy": "Default",
                                "identity": [
                                    {
                                        "type": "UserAssigned"
                                    }
                                ],
                                "location": "centralus",
                                "minimum_tls_version": "1.2",
                                "name": "zenpaydata",
                                "outbound_network_restriction_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null,
                                "version": "12.0"
                            }
                        },
                        {
                            "address": "module.sql.azurerm_user_assigned_identity.zenpay_identity",
                            "mode": "managed",
                            "name": "zenpay_identity",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_user_assigned_identity",
                            "values": {
                                "location": "centralus",
                                "name": "zenpaymanaagedid",
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.sql.data.azurerm_client_config.current",
                            "mode": "data",
                            "name": "current",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_client_config",
                            "values": {
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.subnet",
                    "resources": [
                        {
                            "address": "module.subnet.azurerm_subnet.dev-zenpay-appgw",
                            "mode": "managed",
                            "name": "dev-zenpay-appgw",
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
                                "name": "dev-appgw-subnet",
                                "resource_group_name": "web-infra-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "main-vnet"
                            }
                        },
                        {
                            "address": "module.subnet.azurerm_subnet.dev-zenpay-db",
                            "mode": "managed",
                            "name": "dev-zenpay-db",
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
                                "name": "dev-db-subnet",
                                "resource_group_name": "web-infra-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "main-vnet"
                            }
                        },
                        {
                            "address": "module.subnet.azurerm_subnet.dev-zenpay-web",
                            "mode": "managed",
                            "name": "dev-zenpay-web",
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
                                "name": "dev-web-subnet",
                                "resource_group_name": "web-infra-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "main-vnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.vm",
                    "resources": [
                        {
                            "address": "module.vm.azurerm_availability_set.dev-zenpay-web",
                            "mode": "managed",
                            "name": "dev-zenpay-web",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_availability_set",
                            "values": {
                                "location": "centralus",
                                "managed": true,
                                "name": "avsetui",
                                "platform_fault_domain_count": 3,
                                "platform_update_domain_count": 5,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_network_interface.db",
                            "mode": "managed",
                            "name": "db",
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
                                "location": "centralus",
                                "name": "db-nic",
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_network_interface.web[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "web",
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
                                "location": "centralus",
                                "name": "web-nic-0",
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_network_interface.web[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "web",
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
                                "location": "centralus",
                                "name": "web-nic-1",
                                "resource_group_name": "web-infra-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_windows_virtual_machine.db",
                            "mode": "managed",
                            "name": "db",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": true,
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
                                "termination_notification": [],
                                "winrm_listener": []
                            },
                            "type": "azurerm_windows_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": "Adminpassword123@@@#####",
                                "admin_username": "adminuser",
                                "allow_extension_operations": true,
                                "availability_set_id": null,
                                "boot_diagnostics": [],
                                "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                                "capacity_reservation_group_id": null,
                                "custom_data": null,
                                "dedicated_host_group_id": null,
                                "dedicated_host_id": null,
                                "edge_zone": null,
                                "enable_automatic_updates": true,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extensions_time_budget": "PT1H30M",
                                "gallery_application": [],
                                "hotpatching_enabled": false,
                                "identity": [],
                                "license_type": null,
                                "location": "centralus",
                                "max_bid_price": -1,
                                "name": "db-vm",
                                "os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "diff_disk_settings": [],
                                        "disk_encryption_set_id": null,
                                        "disk_size_gb": 256,
                                        "secure_vm_disk_encryption_set_id": null,
                                        "security_encryption_type": null,
                                        "storage_account_type": "Premium_LRS",
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "AutomaticByOS",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "web-infra-rg",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_D4s_v3",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "WindowsServer",
                                        "publisher": "MicrosoftWindowsServer",
                                        "sku": "2019-Datacenter",
                                        "version": "latest"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": null,
                                "user_data": null,
                                "virtual_machine_scale_set_id": null,
                                "vm_agent_platform_updates_enabled": false,
                                "vtpm_enabled": null,
                                "winrm_listener": [],
                                "zone": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_windows_virtual_machine.web[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "web",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": true,
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
                                "termination_notification": [],
                                "winrm_listener": []
                            },
                            "type": "azurerm_windows_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": "Adminpassword123@@@#####",
                                "admin_username": "adminuser",
                                "allow_extension_operations": true,
                                "boot_diagnostics": [],
                                "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                                "capacity_reservation_group_id": null,
                                "custom_data": null,
                                "dedicated_host_group_id": null,
                                "dedicated_host_id": null,
                                "edge_zone": null,
                                "enable_automatic_updates": true,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extensions_time_budget": "PT1H30M",
                                "gallery_application": [],
                                "hotpatching_enabled": false,
                                "identity": [],
                                "license_type": null,
                                "location": "centralus",
                                "max_bid_price": -1,
                                "name": "web-vm-0",
                                "os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "diff_disk_settings": [],
                                        "disk_encryption_set_id": null,
                                        "disk_size_gb": 128,
                                        "secure_vm_disk_encryption_set_id": null,
                                        "security_encryption_type": null,
                                        "storage_account_type": "Premium_LRS",
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "AutomaticByOS",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "web-infra-rg",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_D2s_v3",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "WindowsServer",
                                        "publisher": "MicrosoftWindowsServer",
                                        "sku": "2019-Datacenter",
                                        "version": "latest"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": null,
                                "user_data": null,
                                "virtual_machine_scale_set_id": null,
                                "vm_agent_platform_updates_enabled": false,
                                "vtpm_enabled": null,
                                "winrm_listener": [],
                                "zone": null
                            }
                        },
                        {
                            "address": "module.vm.azurerm_windows_virtual_machine.web[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "web",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": true,
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
                                "termination_notification": [],
                                "winrm_listener": []
                            },
                            "type": "azurerm_windows_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": "Adminpassword123@@@#####",
                                "admin_username": "adminuser",
                                "allow_extension_operations": true,
                                "boot_diagnostics": [],
                                "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                                "capacity_reservation_group_id": null,
                                "custom_data": null,
                                "dedicated_host_group_id": null,
                                "dedicated_host_id": null,
                                "edge_zone": null,
                                "enable_automatic_updates": true,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extensions_time_budget": "PT1H30M",
                                "gallery_application": [],
                                "hotpatching_enabled": false,
                                "identity": [],
                                "license_type": null,
                                "location": "centralus",
                                "max_bid_price": -1,
                                "name": "web-vm-1",
                                "os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "diff_disk_settings": [],
                                        "disk_encryption_set_id": null,
                                        "disk_size_gb": 128,
                                        "secure_vm_disk_encryption_set_id": null,
                                        "security_encryption_type": null,
                                        "storage_account_type": "Premium_LRS",
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "AutomaticByOS",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "web-infra-rg",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_D2s_v3",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "WindowsServer",
                                        "publisher": "MicrosoftWindowsServer",
                                        "sku": "2019-Datacenter",
                                        "version": "latest"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": null,
                                "user_data": null,
                                "virtual_machine_scale_set_id": null,
                                "vm_agent_platform_updates_enabled": false,
                                "vtpm_enabled": null,
                                "winrm_listener": [],
                                "zone": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.vnet",
                    "resources": [
                        {
                            "address": "module.vnet.azurerm_virtual_network.dev-zenpay-vnet",
                            "mode": "managed",
                            "name": "dev-zenpay-vnet",
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
                                "location": "centralus",
                                "name": "main-vnet",
                                "resource_group_name": "web-infra-rg",
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
                "resources": [
                    {
                        "address": "data.azurerm_client_config.owner",
                        "mode": "data",
                        "name": "owner",
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
                "location"
            ],
            "resource": "module.resource_group.azurerm_resource_group.dev-zenpay-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.resource_group.azurerm_resource_group.dev-zenpay-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb_probe.web_lb_probe"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.appgateway.azurerm_public_ip.appgw_pip"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.sql.azurerm_user_assigned_identity.zenpay_identity"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.sql.data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "module.sql.data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sql.azurerm_user_assigned_identity.zenpay_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.backup_and_security.azurerm_security_center_workspace.securityposturews"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.backup_and_security.azurerm_recovery_services_vault.zenpay_recovery_vault"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm.azurerm_network_interface.db"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "module.sql.azurerm_user_assigned_identity.zenpay_identity"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.resource_group.azurerm_resource_group.dev-zenpay-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vnet.azurerm_virtual_network.dev-zenpay-vnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.vnet.azurerm_virtual_network.dev-zenpay-vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.backup_and_security.azurerm_backup_policy_vm.vm_backup_policy"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.appgateway.azurerm_application_gateway.zenpay-appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_public_ip.lb"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm.azurerm_availability_set.dev-zenpay-web"
        },
        {
            "attribute": [],
            "resource": "module.vm.azurerm_network_interface.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sql.azurerm_key_vault.zenpay_key_vault"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.backup_and_security.azurerm_security_center_contact.security_contact"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.nsg.azurerm_network_security_group.dev_zenpay_web_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.backup_and_security.azurerm_log_analytics_workspace.securitypostlog"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.backup_and_security.azurerm_recovery_services_vault.zenpay_recovery_vault"
        },
        {
            "attribute": [],
            "resource": "module.vm.azurerm_windows_virtual_machine.web"
        },
        {
            "attribute": [
                "address_space"
            ],
            "resource": "module.vnet.azurerm_virtual_network.dev-zenpay-vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.nsg.azurerm_network_security_group.dev_zenpay_db_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.subnet.azurerm_subnet.dev-zenpay-appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.subnet.azurerm_subnet.dev-zenpay-db"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm.azurerm_windows_virtual_machine.db"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sql.azurerm_mssql_server.zenpaydatabase"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.subnet.azurerm_subnet.dev-zenpay-web"
        },
        {
            "attribute": [
                "frontend_ip_configuration",
                0,
                "name"
            ],
            "resource": "module.loadbalancer.azurerm_lb.dev_zenpay_web_lb"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sql.azurerm_user_assigned_identity.zenpay_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sql.azurerm_key_vault_key.zenpay_key_vault_key"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb.dev_zenpay_web_lb"
        }
    ],
    "resource_changes": [
        {
            "address": "module.appgateway.azurerm_application_gateway.zenpay-appgw",
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
                            "name": "appgw-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "appgw-backend-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 30,
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
                            "name": "appgw-frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "appgw-http-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appgw-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appgw-frontend-ip",
                            "frontend_port_name": "appgw-http-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "appgw-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "centralus",
                    "name": "zenpaygateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "appgw-backend-pool",
                            "backend_http_settings_name": "appgw-backend-http-settings",
                            "http_listener_name": "appgw-http-listener",
                            "name": "appgw-routing-rule",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.appgateway",
            "name": "zenpay-appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.appgateway.azurerm_public_ip.appgw_pip",
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
                    "location": "centralus",
                    "name": "appgw-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.appgateway",
            "name": "appgw_pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.backup_and_security.azurerm_backup_policy_vm.vm_backup_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [
                        {
                            "frequency": "Daily",
                            "hour_duration": null,
                            "hour_interval": null,
                            "time": "23:00",
                            "weekdays": null
                        }
                    ],
                    "instant_restore_resource_group": [],
                    "name": "vm-backup-policy",
                    "policy_type": "V1",
                    "recovery_vault_name": "zenpayrecoveryvault",
                    "resource_group_name": "web-infra-rg",
                    "retention_daily": [
                        {
                            "count": 10
                        }
                    ],
                    "retention_monthly": [
                        {
                            "count": 7,
                            "days": null,
                            "include_last_days": false,
                            "weekdays": [
                                "Sunday",
                                "Wednesday"
                            ],
                            "weeks": [
                                "First",
                                "Last"
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "count": 42,
                            "weekdays": [
                                "Friday",
                                "Saturday",
                                "Sunday",
                                "Wednesday"
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": [],
                    "timeouts": null,
                    "timezone": "UTC"
                },
                "after_sensitive": {
                    "backup": [
                        {}
                    ],
                    "instant_restore_resource_group": [],
                    "retention_daily": [
                        {}
                    ],
                    "retention_monthly": [
                        {
                            "weekdays": [
                                false,
                                false
                            ],
                            "weeks": [
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "weekdays": [
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": []
                },
                "after_unknown": {
                    "backup": [
                        {}
                    ],
                    "id": true,
                    "instant_restore_resource_group": [],
                    "instant_restore_retention_days": true,
                    "retention_daily": [
                        {}
                    ],
                    "retention_monthly": [
                        {
                            "weekdays": [
                                false,
                                false
                            ],
                            "weeks": [
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "weekdays": [
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.backup_and_security",
            "name": "vm_backup_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_backup_policy_vm"
        },
        {
            "address": "module.backup_and_security.azurerm_log_analytics_workspace.securitypostlog",
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
                    "location": "centralus",
                    "name": "security-posture-log-analytics",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "web-infra-rg",
                    "retention_in_days": 30,
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
                    "secondary_shared_key": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.backup_and_security",
            "name": "securitypostlog",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.backup_and_security.azurerm_recovery_services_vault.zenpay_recovery_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "classic_vmware_replication_enabled": null,
                    "cross_region_restore_enabled": false,
                    "encryption": [],
                    "identity": [],
                    "location": "centralus",
                    "monitoring": [],
                    "name": "zenpayrecoveryvault",
                    "public_network_access_enabled": true,
                    "resource_group_name": "web-infra-rg",
                    "sku": "Standard",
                    "soft_delete_enabled": true,
                    "storage_mode_type": "GeoRedundant",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "encryption": [],
                    "identity": [],
                    "monitoring": []
                },
                "after_unknown": {
                    "encryption": [],
                    "id": true,
                    "identity": [],
                    "immutability": true,
                    "monitoring": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.backup_and_security",
            "name": "zenpay_recovery_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_recovery_services_vault"
        },
        {
            "address": "module.backup_and_security.azurerm_security_center_auto_provisioning.auto_provisioning",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_provision": "On",
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
            "module_address": "module.backup_and_security",
            "name": "auto_provisioning",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_auto_provisioning"
        },
        {
            "address": "module.backup_and_security.azurerm_security_center_contact.security_contact",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "alert_notifications": true,
                    "alerts_to_admins": true,
                    "email": "midejoseph24@gmail.com",
                    "name": "default1",
                    "phone": "+2348122662392",
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
            "module_address": "module.backup_and_security",
            "name": "security_contact",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_contact"
        },
        {
            "address": "module.backup_and_security.azurerm_security_center_workspace.securityposturews",
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
                    "scope": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.backup_and_security",
            "name": "securityposturews",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_workspace"
        },
        {
            "address": "module.loadbalancer.azurerm_lb.dev_zenpay_web_lb",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "edge_zone": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "web-lb-frontend",
                            "zones": null
                        }
                    ],
                    "location": "centralus",
                    "name": "web-lb",
                    "resource_group_name": "web-infra-rg",
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "frontend_ip_configuration": [
                        {
                            "inbound_nat_rules": [],
                            "load_balancer_rules": [],
                            "outbound_rules": []
                        }
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "frontend_ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "id": true,
                            "inbound_nat_rules": true,
                            "load_balancer_rules": true,
                            "outbound_rules": true,
                            "private_ip_address": true,
                            "private_ip_address_allocation": true,
                            "private_ip_address_version": true,
                            "public_ip_address_id": true,
                            "public_ip_prefix_id": true,
                            "subnet_id": true
                        }
                    ],
                    "id": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "dev_zenpay_web_lb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "web-lb-backend",
                    "synchronous_mode": null,
                    "timeouts": null,
                    "tunnel_interface": [],
                    "virtual_network_id": null
                },
                "after_sensitive": {
                    "backend_ip_configurations": [],
                    "inbound_nat_rules": [],
                    "load_balancing_rules": [],
                    "outbound_rules": [],
                    "tunnel_interface": []
                },
                "after_unknown": {
                    "backend_ip_configurations": true,
                    "id": true,
                    "inbound_nat_rules": true,
                    "load_balancing_rules": true,
                    "loadbalancer_id": true,
                    "outbound_rules": true,
                    "tunnel_interface": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_backend",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_backend_address_pool"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_probe.web_lb_probe",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "interval_in_seconds": 15,
                    "name": "http-probe",
                    "number_of_probes": 2,
                    "port": 80,
                    "probe_threshold": 1,
                    "protocol": "Http",
                    "request_path": "/",
                    "timeouts": null
                },
                "after_sensitive": {
                    "load_balancer_rules": []
                },
                "after_unknown": {
                    "id": true,
                    "load_balancer_rules": true,
                    "loadbalancer_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_probe",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_probe"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_rule.web_lb_rule",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backend_port": 80,
                    "disable_outbound_snat": false,
                    "enable_floating_ip": false,
                    "enable_tcp_reset": null,
                    "frontend_ip_configuration_name": "web-lb-frontend",
                    "frontend_port": 80,
                    "name": "http-rule",
                    "protocol": "Tcp",
                    "timeouts": null
                },
                "after_sensitive": {
                    "backend_address_pool_ids": []
                },
                "after_unknown": {
                    "backend_address_pool_ids": true,
                    "frontend_ip_configuration_id": true,
                    "id": true,
                    "idle_timeout_in_minutes": true,
                    "load_distribution": true,
                    "loadbalancer_id": true,
                    "probe_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_rule"
        },
        {
            "address": "module.loadbalancer.azurerm_public_ip.lb",
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
                    "location": "centralus",
                    "name": "lb-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.loadbalancer",
            "name": "lb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.nsg.azurerm_network_security_group.dev_zenpay_db_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "name": "db-nsg",
                    "resource_group_name": "web-infra-rg",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "1433",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "Allow-SQL",
                            "priority": 1001,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.1.0/24",
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
            "module_address": "module.nsg",
            "name": "dev_zenpay_db_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.nsg.azurerm_network_security_group.dev_zenpay_web_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "name": "webnsg",
                    "resource_group_name": "web-infra-rg",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "443",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "Allow-HTTPS",
                            "priority": 1002,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
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
                            "destination_port_range": "80",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "Allow-HTTP",
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
            "module_address": "module.nsg",
            "name": "dev_zenpay_web_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.resource_group.azurerm_resource_group.dev-zenpay-rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "managed_by": null,
                    "name": "web-infra-rg",
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
            "name": "dev-zenpay-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "action_reason": "read_because_dependency_pending",
            "address": "module.sql.data.azurerm_client_config.current",
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
            "module_address": "module.sql",
            "name": "current",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_client_config"
        },
        {
            "address": "module.sql.azurerm_key_vault.zenpay_key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": null,
                            "key_permissions": [
                                "Get",
                                "List",
                                "Create",
                                "Delete",
                                "Update",
                                "Recover",
                                "Purge",
                                "GetRotationPolicy"
                            ],
                            "secret_permissions": null,
                            "storage_permissions": null
                        },
                        {
                            "application_id": null,
                            "certificate_permissions": null,
                            "key_permissions": [
                                "Get",
                                "WrapKey",
                                "UnwrapKey"
                            ],
                            "secret_permissions": null,
                            "storage_permissions": null
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "centralus",
                    "name": "zenpaykeyweb46example",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": true,
                    "resource_group_name": "web-infra-rg",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [
                        {
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "key_permissions": [
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
                            "tenant_id": true
                        },
                        {
                            "key_permissions": [
                                false,
                                false,
                                false
                            ],
                            "object_id": true,
                            "tenant_id": true
                        }
                    ],
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
            "module_address": "module.sql",
            "name": "zenpay_key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.sql.azurerm_key_vault_key.zenpay_key_vault_key",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "expiration_date": null,
                    "key_opts": [
                        "unwrapKey",
                        "wrapKey"
                    ],
                    "key_size": 2048,
                    "key_type": "RSA",
                    "name": "nerwtbde",
                    "not_before_date": null,
                    "rotation_policy": [],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "key_opts": [
                        false,
                        false
                    ],
                    "rotation_policy": []
                },
                "after_unknown": {
                    "curve": true,
                    "e": true,
                    "id": true,
                    "key_opts": [
                        false,
                        false
                    ],
                    "key_vault_id": true,
                    "n": true,
                    "public_key_openssh": true,
                    "public_key_pem": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "rotation_policy": [],
                    "version": true,
                    "versionless_id": true,
                    "x": true,
                    "y": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sql",
            "name": "zenpay_key_vault_key",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_key"
        },
        {
            "address": "module.sql.azurerm_mssql_server.zenpaydatabase",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "adminuser",
                    "administrator_login_password": "ySafe11@@@567",
                    "azuread_administrator": [
                        {
                            "login_username": "zenpaymanaagedid"
                        }
                    ],
                    "connection_policy": "Default",
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "location": "centralus",
                    "minimum_tls_version": "1.2",
                    "name": "zenpaydata",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "web-infra-rg",
                    "tags": null,
                    "timeouts": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "azuread_administrator": [
                        {}
                    ],
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
                    "restorable_dropped_database_ids": []
                },
                "after_unknown": {
                    "azuread_administrator": [
                        {
                            "azuread_authentication_only": true,
                            "object_id": true,
                            "tenant_id": true
                        }
                    ],
                    "fully_qualified_domain_name": true,
                    "id": true,
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "primary_user_assigned_identity_id": true,
                    "restorable_dropped_database_ids": true,
                    "transparent_data_encryption_key_vault_key_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sql",
            "name": "zenpaydatabase",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
        },
        {
            "address": "module.sql.azurerm_user_assigned_identity.zenpay_identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "name": "zenpaymanaagedid",
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.sql",
            "name": "zenpay_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "module.subnet.azurerm_subnet.dev-zenpay-appgw",
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
                    "name": "dev-appgw-subnet",
                    "resource_group_name": "web-infra-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "main-vnet"
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
            "module_address": "module.subnet",
            "name": "dev-zenpay-appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.subnet.azurerm_subnet.dev-zenpay-db",
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
                    "name": "dev-db-subnet",
                    "resource_group_name": "web-infra-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "main-vnet"
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
            "module_address": "module.subnet",
            "name": "dev-zenpay-db",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.subnet.azurerm_subnet.dev-zenpay-web",
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
                    "name": "dev-web-subnet",
                    "resource_group_name": "web-infra-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "main-vnet"
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
            "module_address": "module.subnet",
            "name": "dev-zenpay-web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.vm.azurerm_availability_set.dev-zenpay-web",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "managed": true,
                    "name": "avsetui",
                    "platform_fault_domain_count": 3,
                    "platform_update_domain_count": 5,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.vm",
            "name": "dev-zenpay-web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_availability_set"
        },
        {
            "address": "module.vm.azurerm_network_interface.db",
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
                    "location": "centralus",
                    "name": "db-nic",
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.vm",
            "name": "db",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.vm.azurerm_network_interface.web[0]",
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
                    "location": "centralus",
                    "name": "web-nic-0",
                    "resource_group_name": "web-infra-rg",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.vm",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.vm.azurerm_network_interface.web[1]",
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
                    "location": "centralus",
                    "name": "web-nic-1",
                    "resource_group_name": "web-infra-rg",
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.vm",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.vm.azurerm_windows_virtual_machine.db",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Adminpassword123@@@#####",
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "centralus",
                    "max_bid_price": -1,
                    "name": "db-vm",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "disk_size_gb": 256,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Premium_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "web-infra-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D4s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
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
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.vm",
            "name": "db",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "module.vm.azurerm_windows_virtual_machine.web[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Adminpassword123@@@#####",
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "centralus",
                    "max_bid_price": -1,
                    "name": "web-vm-0",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "disk_size_gb": 128,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Premium_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "web-infra-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "availability_set_id": true,
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
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.vm",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "module.vm.azurerm_windows_virtual_machine.web[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Adminpassword123@@@#####",
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "centralus",
                    "max_bid_price": -1,
                    "name": "web-vm-1",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "disk_size_gb": 128,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Premium_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "web-infra-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "availability_set_id": true,
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
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "module_address": "module.vm",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "module.vnet.azurerm_virtual_network.dev-zenpay-vnet",
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
                    "location": "centralus",
                    "name": "main-vnet",
                    "resource_group_name": "web-infra-rg",
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
            "module_address": "module.vnet",
            "name": "dev-zenpay-vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:54:01Z",
    "variables": {
        "admin_password": {
            "value": "Adminpassword123@@@#####"
        },
        "admin_username": {
            "value": "adminuser"
        },
        "administrator_login": {
            "value": "adminuser"
        },
        "administrator_login_password": {
            "value": "ySafe11@@@567"
        },
        "appgw-name": {
            "value": "zenpaygateway"
        },
        "appgw_subnet_address": {
            "value": "10.0.3.0/24"
        },
        "avset_name": {
            "value": "avsetui"
        },
        "backend_address_pool_name": {
            "value": "web-lb-backend"
        },
        "backend_http_port": {
            "value": 80
        },
        "backup_policy_name": {
            "value": "vm-backup-policy"
        },
        "capacity": {
            "value": 2
        },
        "db_os_disk": {
            "value": 256
        },
        "db_subnet_address": {
            "value": "10.0.2.0/24"
        },
        "db_vm_size": {
            "value": "Standard_D4s_v3"
        },
        "frontend_ip_configuration_name": {
            "value": "web-lb-frontend"
        },
        "frontend_port": {
            "value": 80
        },
        "key_vault_name": {
            "value": "zenpaykeyweb46example"
        },
        "lb_name": {
            "value": "web-lb"
        },
        "location": {
            "value": "Central US"
        },
        "log-analytics-name": {
            "value": "security-posture-log-analytics"
        },
        "nsg_name": {
            "value": "webnsg"
        },
        "priority": {
            "value": 1
        },
        "probe_name": {
            "value": "http-probe"
        },
        "public_ip_name": {
            "value": "lb-public-ip"
        },
        "recovery_vault_name": {
            "value": "zenpayrecoveryvault"
        },
        "resource_group_name": {
            "value": "web-infra-rg"
        },
        "rule_name": {
            "value": "http-rule"
        },
        "security-contact-email": {
            "value": "midejoseph24@gmail.com"
        },
        "security-contact-phone": {
            "value": "+2348122662392"
        },
        "sku_name": {
            "value": "Standard_v2"
        },
        "sql_server_name": {
            "value": "zenpaydata"
        },
        "tier": {
            "value": "Standard_v2"
        },
        "transparent_data_encryption_key_name": {
            "value": "nerwtbde"
        },
        "user_assigned_identity_name": {
            "value": "zenpaymanaagedid"
        },
        "vnet_address_space": {
            "value": [
                "10.0.0.0/16"
            ]
        },
        "vnet_name": {
            "value": "main-vnet"
        },
        "web_nic_ids": {
            "value": []
        },
        "web_os_disk": {
            "value": 128
        },
        "web_subnet_address": {
            "value": "10.0.1.0/24"
        },
        "web_vm_count": {
            "value": 2
        },
        "web_vm_size": {
            "value": "Standard_D2s_v3"
        },
        "windows_image_offer": {
            "value": "WindowsServer"
        },
        "windows_image_publisher": {
            "value": "MicrosoftWindowsServer"
        },
        "windows_image_sku": {
            "value": "2019-Datacenter"
        },
        "windows_image_version": {
            "value": "latest"
        }
    }
}