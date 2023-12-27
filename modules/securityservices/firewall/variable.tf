variable "public_ip_firewall_name" {
    description = "name of your public ip."
    type = string
}
variable "public_ip_firewall_allocation_method" {
    description = "allocation method of your public ip."
    type = string
}
variable "public_ip_firewall_sku" {
    description = "public_ip_sku"
    type = string
}
variable "firewall_name" {
    description = "name of your firewall"
    type = string
}
variable "firewall_sku_name" {
    description = "name of your firewall sku"
    type = string
}
variable "firewall_sku_tier" {
    description = "sku tier of firewall"
    type = string
}
variable "ip_configuration_name" {
    description = "name of your ip configuration"
    type = string
}
variable "public_ip_location" {
    description = "location of your public ip"
    type = string
}
variable "firewall_location" {
    description = "location of your firewall"
    type = string
}
variable "azurefirewallsubnet_name" {
    description = "name of your azure firewall subnet"
    type = string
}
variable "azurefirewallsubnet_address_prefixes" {
    description = "address prefixes of your azurefirewall subnet"
    type = list(string)
}
variable "firewall_policy_name" {
    description = "name of your firewall policy"
    type = string
}
variable "firewall_policy_rule_collection_group_name" {
    description = "name of your firewall policy rule collection group."
    type = string
}
variable "firewall_policy_rule_collection_group_priority" {
    description = "priority"
    type = number
}
variable "app_rule_collection_name" {
    description = "name of your app rule collection"
    type = string
}
variable "app_rule_collection_priority" {
    description = "priority"
    type = number
}
variable "app_rule_collection_action" {
    description = "action"
    type = string
}
variable "app_rule_collection_rule1" {
    description = "app  rule collection rule 1"
    type = string
}
variable "app_rule_collection_rule1_protocol1" {
    description="app_rule_collection_rule1_protocol1"
    type = string
}
variable "app_rule_collection_rule1_port1" {
    description = "app_rule_collection_rule1_port1"
    type = number
}
variable "app_rule_collection_rule1_protocol2" {
    description = "app_rule_collection_rule1_protocol2"
    type = string
}
variable "app_rule_collection_rule1_port2" {
    description = "app_rule_collection_rule1_port2" 
    type = number
}
variable "app_rule_collection_source_addresses" {
    description = "app_rule_collection_source_addresses"
    type = list(string)
}
variable "app_rule_collection_destination_fqdns" {
    description = "app_rule_collection_destination_fqdns"
    type = list(string)
}
variable "network_rule_collection_name" {
    description = "network_rule_collection_name"
    type = string
}
variable "network_rule_collection_priority" {
    description = "network_rule_collection_priority"
    type = number
}
variable "network_rule_collection_action" {
    description = "network_rule_collection_action"
    type = string
}
variable "network_rule_collection_rule1_name" {
    description = "network_rule_collection_rule1.name"
    type = string
}
variable "network_rule_collection_rule1_protocols" {
    description = "network_rule_collection_rule1.protocols"
    type = list(string)
}
variable "network_rule_collection_rule1_source_addresses" {
    description = "network_rule_collection_rule1.source_addresses"
    type = list(string)
}
variable "network_rule_collection_rule1_destination_addresses" {
    description = "network_rule_collection_rule1.destination_addresses"
    type = list(string)
}
variable "network_rule_collection_rule1_destination_ports" {
    description = "network_rule_collection_rule1.destination_ports"
    type = list(string)
}
variable "nat_rule_collection_rule_name" {
    description = "nat_rule_collection_rule1_name"
    type = string
}
variable "nat_rule_collection_rule_priority" {
    description = "nat_rule_collection_rule1_name"
    type = number
}
variable "nat_rule_collection_rule_action" {
    description = "nat_rule_collection_rule1_name"
    type = string
}
variable "nat_rule_collection_rule1_name" {
    description = "nat_rule_collection_rule1_name"
    type = string
}
variable "nat_rule_collection_rule1_protocols" {
    description = "nat_rule_collection_rule1_protocols"
    type = list(string)
}
variable "nat_rule_collection_rule1_source_addresses" {
    description = "nat_rule_collection_rule1_source_addresses"
    type = list(string)
}
variable "nat_rule_collection_rule1_destination_address" {
    description = "nat_rule_collection_rule1_destination_address"
    type = string
}
variable "nat_rule_collection_rule1_destination_ports" {
    description = "nat_rule_collection_rule1_destination_ports"
    type = list(string)
}
variable "nat_rule_collection_rule1_translated_address" {
    description = "nat_rule_collection_rule1_translated_address"
    type = string
}
variable "nat_rule_collection_rule1_translated_port" {
    description = "nat_rule_collection_rule1_translated_port"
    type = string
}
variable "resource_group_name" {
    description = "name of the resource group."
    type = string
}
variable "virtual_network_name" {
    description = "name of the virtual network."
    type = string
}
variable "resource_group_location" {
    description = "location of the resource group."
    type = string
}