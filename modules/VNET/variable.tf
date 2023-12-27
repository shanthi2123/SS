variable "virtual_network_name" {
  description = "Name of your Azure Virtual Network."
  type     = string
}
variable "virtual_network_location" {
  description = "location of the virtual network."
   type       = string
}
variable "virtual_network_address_space" {
  description = "The address space to be used for the Azure virtual network."
  type     = list(string)
}
variable "subnet_name" {
  description = "subnet name of the virtual network."
  type     = string
}
variable "subnet_address_prefixes" {
  description = "subnet address prefixes of the virtual network."
  type     = list(string)
}
variable "resource_group_name" {
  description = "name of the resource group."
  type = string
}
variable "resource_group_location" {
  description = "location of the resource group."
  type = string
}
variable "local_network_gateway_name" {
  description = "name of the local network gateway."
  type = string
}
variable "local_network_gateway_address" {
  description = "address of the gateway."
  type = string
}
variable "local_network_gateway_address_space" {
  description = "address space for the local network gateway."
  type = list(string)
}
variable "public_ip_virtual_network_gateway_name" {
  description = "name of the public ip for the virtual network gateway."
  type = string
}
variable "public_ip_virtual_network_gateway_allocation_method" {
  description = "public ip allocation method for network gateway."
  type = string
}
variable "virtual_network_gateway_name" {
  description = "name of the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_type" {
  description = "type of the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_vpn_type" {
  description = "vpn type of the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_active_active" {
  description = "active active for the virtual network gateway."
  type = string  
}
variable "virtual_network_gateway_enable_bgp" {
  description = "enable bgp for the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_sku" {
  description = "sku for the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_private_ip_address_allocation" {
  description = "private ip allocation for the virtual network gateway."
  type = string
}
variable "virtual_network_gateway_connection_name" {
  description = "name of the virtual network gateway connection."
  type = string
}
variable "virtual_network_gateway_connection_type" {
  description = "connection type of the virtual network gateway."
  type = string
}
