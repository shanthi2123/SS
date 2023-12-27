resource "azurerm_subnet" "GatewaySubnet" {
  name                 = var.GatewaySubnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.GatewaySubnet_address_prefixes
}

#resource "azurerm_subnet" "backend" {
 # name                 = var.be_subnet_name
  #resource_group_name  = "${azurerm_resource_group.rg.name}"
  #virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  #address_prefixes     = var.be_subnet_address_prefixes
#}

resource "azurerm_public_ip" "appgw-pip" {
  name                = var.appgw-pip_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  allocation_method   = var.appgw-pip_allocation_method
  sku                  = var.appgw-sku
}
locals {
  backend_address_pool_name      = var.beap_name
  frontend_port_name             = var.feport_name
  frontend_ip_configuration_name = var.feip_name
  http_setting_name              = var.be-htst_name
  listener_name                  = var.httplstn_name
  request_routing_rule_name      = var.rqrt_name
  redirect_configuration_name    = var.rdrcfg_name
}

resource "azurerm_application_gateway" "appgw" {
  name                = var.appgw_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.sku_capacity
  }

  gateway_ip_configuration {
         name      = var.appgw_ip_configuration
    subnet_id = azurerm_subnet.GatewaySubnet.id
  }

  frontend_port {
    name = var.frontend_port_name
    port = var.port
  }

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.appgw-pip.id
  }

  backend_address_pool {
    name = var.backend_address_pool_name
  }

  backend_http_settings {
    name                  = var.http_setting_name
    cookie_based_affinity = var.cookie_based_affinity
    path                  = var.path
    port                  = var.bhs_port
    protocol              = var.bhs_protocol
    request_timeout       = var.request_timeout
  }

  http_listener {
    name                           = var.listener_name
    frontend_ip_configuration_name = var.frontend_ip_configuration_name
    frontend_port_name             = var.frontend_port_name
    protocol                       = var.hl_protocol
  }

  request_routing_rule {
    name                       = var.request_routing_rule_name
    rule_type                  = var.rule_type
    http_listener_name         = var.listener_name
    backend_address_pool_name  = var.backend_address_pool_name
    backend_http_settings_name = var.http_setting_name
}
}