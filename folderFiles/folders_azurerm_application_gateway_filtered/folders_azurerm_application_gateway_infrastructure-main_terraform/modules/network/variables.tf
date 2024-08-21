variable "public_ip" {
  description = "Name of the Azure Public IP"
  default = "myFirstPublicIp"
}

variable "location" {
  description = "Location for the Azure resources"
    default = "eastus"

}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
    default = null

}


variable "allocation_method" {
  description = "Allocation method for the Public IP"
  default = "Static"
}

variable "sku" {
  description = "SKU for the Public IP"
  default = "Standard"
}

variable "apgw_vnet" {
  description = "Name of the API Virtual Network"
  default = "ApiVnet"
}

variable "apgw_vnet_address_space" {
  description = "Address space for the API Virtual Network"
    default = "10.0.0.0/16"

}

variable "apgw_subnet" {
  description = "Name of the API Gateway Subnet"
  default = "apiGatewaySubnet"
}

variable "apgw_subnet_address_prefixes" {
  description = "Address prefixes for the API Gateway Subnet"
    default = "10.0.0.0/16"

}

variable "cluster_vnet" {
  description = "Name of the Cluster Virtual Network"
  default = "myClusterVnet"
}

variable "cluster_vnet_address_space" {
  description = "Address space for the Cluster Virtual Network"
    default = "10.0.0.0/16"

}

variable "cluster_subnet" {
  description = "Name of the Cluster Subnet"
  default = "clusterSubnet"

}

variable "cluster_subnet_address_prefixes" {
  description = "Address prefixes for the Cluster Subnet"
    default = "10.0.0.0/16"

}

variable "appgw_to_cluster_peering" {
  description = "Name of the peering from AppGW to Cluster VNet"
  default = "AppGWtoClusterVnetPeering"
}

variable "cluster_to_appgw_peering" {
  description = "Name of the peering from Cluster to AppGW VNet"
  default = "ClustertoAppGWVnetPeering"
}