resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = var.virtual_network_location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space
}
resource "azurerm_subnet" "subnet" {
  name                  = var.subnet_name
  address_prefixes      = var.subnet_address_prefixes
  virtual_network_name  = azurerm_virtual_network.vnet.name
  resource_group_name   = var.resource_group_name
}
resource "azurerm_local_network_gateway" "lngw" {
  name                = var.local_network_gateway_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  gateway_address     = var.local_network_gateway_address
  address_space       = var.local_network_gateway_address_space
}

resource "azurerm_public_ip" "vngw-pip" {
  name                = var.public_ip_virtual_network_gateway_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_virtual_network_gateway_allocation_method
}
resource "azurerm_virtual_network_gateway" "vngw" {
  name                = var.virtual_network_gateway_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  type     = var.virtual_network_gateway_type
  vpn_type = var.virtual_network_gateway_vpn_type

  active_active = var.virtual_network_gateway_active_active
  enable_bgp    = var.virtual_network_gateway_enable_bgp
  sku           = var.virtual_network_gateway_sku

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.vngw-pip.id
    private_ip_address_allocation = var.virtual_network_gateway_private_ip_address_allocation
    subnet_id                     = azurerm_subnet.subnet.id
  }
}
resource "azurerm_virtual_network_gateway_connection" "onpremise" {
  name                = var.virtual_network_gateway_connection_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  type                       = var.virtual_network_gateway_connection_type
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vngw.id
  local_network_gateway_id   = azurerm_local_network_gateway.lngw.id

  #shared_key = var.virtual_network_gateway_connection_shared_key
}