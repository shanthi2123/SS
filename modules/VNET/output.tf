output "subnet_id" {
    description = "id of the subnet."
    value = azurerm_subnet.subnet.id
}
output "vnet_id" {
    description = "id of the vnet."
    value = azurerm_virtual_network.vnet.id
}