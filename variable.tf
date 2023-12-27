variable "resource_group_name" {
  description = "name of the resource group."
  type = string
}
variable "resource_group_location" {
  description = "location of the resource group."
  type        = string
}

variable "virtual_network_location" {
  description = "location of the resource group."
  type     = string
}
variable "virtual_network_name" {
  description = "Name of your Azure Virtual Network."
  type     = string
}
variable "virtual_network_address_space" {
  description = "The address space of the Azure virtual network."
  type     = list(string)
}
variable "subnet_name" {
  description = "name of the subnet."
  type     = string
}
variable "subnet_address_prefixes" {
  description = "address prefixes of the subnet."
  type     = list(string)
}
variable "local_network_gateway_name" {
  description = "name of the local network gateway."
  type = string
}
variable "local_network_gateway_address" {
  description = "address of the local network gateway."
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
variable "application_security_group_name" {
    description = "application security group."
    type = string
}
variable "NIC_name" {
    description = "network interface name."
    type = string
}
variable "NIC_ip_configuration_name" {
    description = "ip configuration name for network interface."
    type = string
}
variable "NIC_private_ip_address_allocation" {
    description = "private ip address allocation for network interface."
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
variable "asgsubnet_name" {
    description = "name for the asg subnet"
    type = string
}
variable "asgsubnet_address_prefixes" {
    description = "address prefixes for the asg subnet"
    type = list(string)
}
variable "GatewaySubnet_name" {
        description = "subnet name for the frontend"
        type = string
}
variable "GatewaySubnet_address_prefixes" {
        description = "address prefixes for the frontend subnet"
        type = list(string)
}
#variable "be_subnet_name" {
 #        description = "subnet name for the backend"
  #      type = string
#}
#variable "be_subnet_address_prefixes" {
 #       description = "address prefixes for the backend subnet"
  #      type = list(string)
#}
variable "appgw-pip_name" {
        description = "public ip name for the appgw"
        type = string
}
variable "appgw-pip_allocation_method" {
        description = "allocation method for the public ip appgw"
        type = string
}
variable "appgw-sku" {
        description = "sku for the application gateway"
        type = string
}
variable "beap_name" {
        description = "beap name"
        type = string
}
variable "feport_name" {
        description = "feport name"
        type = string
}
variable "feip_name" {
        description = "feip name"
        type = string
}
variable "be-htst_name" {
        description = "be-htst name"
        type = string
}
variable "httplstn_name" {
        description = "httplstn name"
         type = string
}
variable  "rqrt_name" {
        description = "rqrt name"
        type = string
}
variable "rdrcfg_name" {
        description = "rdrcfg name"
        type = string
}
variable "appgw_name" {
        description = "appgw name"
        type = string
}
variable "sku_name" {
        description = "sku name"
        type = string
}
variable "sku_tier" {
        description = "sku tier"
        type = string
}
variable "sku_capacity" {
        description = "sku capacity"
        type = number
}
variable "appgw_ip_configuration" {
        description = "gw ip configuration"
        type = string
}
variable "frontend_port_name" {
        description = "frontend port name"
        type = string
}
variable "port" {
        description = "port"
        type = string
}
variable "frontend_ip_configuration_name" {
        description = "frontend ip configuration name"
          type = string
}
variable "backend_address_pool_name" {
        description = "backend address pool name"
        type = string
}
variable "http_setting_name" {
        description = "http setting name"
        type = string
}
variable "cookie_based_affinity" {
        description = "cookie based affinity"
        type = string
}
variable "path" {
        description = "path"
        type = string
}
variable "bhs_port" {
        description = "bhs_port"
        type = number
}
variable "bhs_protocol" {
        description = "bhs_protocol"
        type = string
}
variable "request_timeout" {
        description = "request timeout"
        type = string
}
variable "listener_name" {
        description = "listener name"
        type = string
}
variable "frontend_ip_configuration_name" {
        description = "frontend ip configuration name"
        type = string
}
variable "request_routing_rule_name" {
        description = "request routing rule name"
        type = string
}
variable "rule_type" {
        description = "rule type"
        type= string
}
variable "hl_protocol" {
        description = "hl protocol"
        type = string
}
variable "resource_group_location" {
    description = "location for the resource group"
    type = string
}
variable "log_name" {
    description = "name for the log"
    type = string
}
variable "log_sku" {
    description = "sku for the log"
    type = string
}
variable "solution_name" {
    description = "name for the solution"
    type = string
}
variable "log_publisher_plan" {
    description = "publisher plan for the log"
    type = string
}
variable "log_publisher_product" {
    type = string
    description = "publisher product for the log"
}
variable "fusion_name" {
    description = "name for the fusion"
    type = string
}
variable "alert_rule_template_guid" {
    description = "alert rule temple guid"
    type = string
}
variable "eventhub_namespace_name" {
    description = "name for the eventhub newspace"
    type = string
}
variable "eventhub_sku" {
    description = "sku for the eventhub"
    type = string
}
variable "capacity" {
    description = "capacity"
    type = number
}
variable "eventhub_name" {
    description = "name for the eventhub"
    type = string
}
variable "partition_count" {
    description = "partition count"
    type = number
}
variable "message_retention" {
    description = "message retention"
    type = number
}
variable "eventhub_authorization_rule_name" {
    description = "name for the eventhub authorization rule"
    type = string
}
variable "listen" {
    description = "listen"
    type = string
}
variable "send" {
    description = "send"
    type = string
}
variable "manage" {
    description = "manage"
    type = string
}
variable "security_center_automation_name" {
    description = "name for the security center automation"
    type = string
}
variable "type" {
    description = "type"
    type = string
}
variable "event_source" {
    description = "event source"
    type = string
}
variable "property_path" {
    description = "property path"
    type = string
}
variable "rule_operator" {
    description = "rule operator"
    type = string
}
variable "expected_value" {
    description = "expected value"
    type = string
}
variable "property_type" {
    description = "property type"
    type = string
}
variable "key_vault_name" {

    description = "name of your keyvault"

    type = string

}



variable "soft_delete_retention_days" {

    description = "soft delete retention days"

    type = number

}


variable "purge_protection_enabled" {

    description = "enabled"

    type = bool

}

variable "sku_name" {

    description = "name of your sku"

    type = string

}

variable "key_permissions" {

    description = "key permissions"

    type = list(string)

}

variable "secret_permissions" {

    description = "secret permissions"

    type = list(string)

}

variable "storage_permissions" {

    description = "storage permissions"

    type = list(string)

}


variable "secret1_name" {

    description = "secret1_name"

    type = string

}

variable "secret1_value" {

    description = "secret1_value"

    type = string

}

variable "secret2_name" {

    description = "secret2_name"

    type = string

}

variable "secret2_value" {

    description = "secret2_value"

    type = string

}

variable "secret3_name" {

    description = "secret3_name"

    type = string

}

variable "secret3_value" {

    description = "secret3_value"

    type = string

}

variable "secret4_name" {

    description = "secret4_name"

    type = string

}

variable "secret4_value" {

    description = "secret4_value"

    type = string

}

variable "object_id" {

    description = "object_id"

    type = string
  
}

variable "display_name" {
  type = string
  description = "display name"
}


