resource "azurerm_application_security_group" "ASG" {
  name                = var.application_security_group_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}
resource "azurerm_subnet" "asgsubnet" {
  name = var.asgsubnet_name
  resource_group_name = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes = var.asgsubnet_address_prefixes
  
}

resource "azurerm_network_interface" "NIC" {
  name                = var.NIC_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.NIC_ip_configuration_name
    subnet_id                     = azurerm_subnet.asgsubnet.id
    private_ip_address_allocation = var.NIC_private_ip_address_allocation
  }
}

resource "azurerm_network_interface_application_security_group_association" "ASG-association" {
  network_interface_id          = azurerm_network_interface.NIC.id
  application_security_group_id = azurerm_application_security_group.ASG.id
}
