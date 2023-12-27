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
variable "resource_group_location" {
    description = "location for thr resource group"
    type = string
}
