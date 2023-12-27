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
variable "hl_protocol" {
        description = "hl protocol"
        type =string
}
variable "request_routing_rule_name" {
        description = "request routing rule name"
        type = string
}
variable "rule_type" {
        description = "rule type"
        type= string
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
    description = "location for thr resource group"
    type = string
}