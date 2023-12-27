terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}
module "resource_group" {

    source = "./modules/RG"

    resource_group_name                                     = var.resource_group_name

    resource_group_location                                 = var.resource_group_location

}
module "virtual_network" {

    source = "./modules/VNET"

    virtual_network_name                                    = var.virtual_network_name
    virtual_network_location                                = var.virtual_network_location
    virtual_network_address_space                           = var.virtual_network_address_space
    resource_group_name                                     = var.resource_group_name
    resource_group_location                                 = var.resource_group_location
    subnet_name                                             = var.subnet_name 
    subnet_address_prefixes                                 = var.subnet_address_prefixes
    local_network_gateway_name                              = var.local_network_gateway_name
    local_network_gateway_address                           = var.local_network_gateway_address
    local_network_gateway_address_space                     = var.local_network_gateway_address_space
    public_ip_virtual_network_gateway_name                  = var.public_ip_virtual_network_gateway_name
    public_ip_virtual_network_gateway_allocation_method     = var.public_ip_virtual_network_gateway_allocation_method
    virtual_network_gateway_name                            = var.virtual_network_gateway_name
    virtual_network_gateway_type                            = var.virtual_network_gateway_type
    virtual_network_gateway_vpn_type                        = var.virtual_network_gateway_vpn_type
    virtual_network_gateway_active_active                   = var.virtual_network_gateway_active_active
    virtual_network_gateway_enable_bgp                      = var.virtual_network_gateway_enable_bgp
    virtual_network_gateway_sku                             = var.virtual_network_gateway_sku
    virtual_network_gateway_private_ip_address_allocation   = var.virtual_network_gateway_private_ip_address_allocation
    virtual_network_gateway_connection_name                 = var.virtual_network_gateway_connection_name
    virtual_network_gateway_connection_type                 = var.virtual_network_gateway_connection_type
    #virtual_network_gateway_connection_shared_key          = var.virtual_network_gateway_connection_shared_key
    depends_on = [ module.resource_group ]
}

module "firewall" {

  source = "./modules/securityservices/firewall"
  public_ip_firewall_name                                   = var.public_ip_firewall_name
  public_ip_location                                        = var.resource_group_location
  public_ip_firewall_allocation_method                      = var.public_ip_firewall_allocation_method
  public_ip_firewall_sku                                    = var.public_ip_firewall_sku
  resource_group_name                                       = var.resource_group_name
  resource_group_location                                   = var.resource_group_location
  virtual_network_name                                      = var.virtual_network_name
  firewall_name                                             = var.firewall_name
  firewall_location                                         = var.resource_group_location
  firewall_sku_name                                         = var.firewall_sku_name
  firewall_sku_tier                                         = var.firewall_sku_tier
  ip_configuration_name                                     = var.ip_configuration_name
  azurefirewallsubnet_name                                  = var.azurefirewallsubnet_name
  azurefirewallsubnet_address_prefixes                      = var.azurefirewallsubnet_address_prefixes
  firewall_policy_name                                      = var.firewall_policy_name
  firewall_policy_rule_collection_group_name                = var.firewall_policy_rule_collection_group_name
  firewall_policy_rule_collection_group_priority            = var.firewall_policy_rule_collection_group_priority
  app_rule_collection_name                                  = var.app_rule_collection_name
  app_rule_collection_priority                              = var.app_rule_collection_priority
  app_rule_collection_action                                = var.app_rule_collection_action
  app_rule_collection_rule1                                 = var.app_rule_collection_rule1
  app_rule_collection_rule1_protocol1                       = var.app_rule_collection_rule1_protocol1
  app_rule_collection_rule1_port1                           = var.app_rule_collection_rule1_port1
  app_rule_collection_rule1_protocol2                       = var.app_rule_collection_rule1_protocol2
  app_rule_collection_rule1_port2                           = var.app_rule_collection_rule1_port2
  app_rule_collection_source_addresses                      = var.app_rule_collection_source_addresses
  app_rule_collection_destination_fqdns                     = var.app_rule_collection_destination_fqdns
  network_rule_collection_name                              = var.network_rule_collection_name
  network_rule_collection_priority                          = var.network_rule_collection_priority
  network_rule_collection_action                            = var.network_rule_collection_action
  network_rule_collection_rule1_name                        = var.network_rule_collection_rule1_name
  network_rule_collection_rule1_protocols                   = var.network_rule_collection_rule1_protocols
  network_rule_collection_rule1_source_addresses            = var.network_rule_collection_rule1_source_addresses
  network_rule_collection_rule1_destination_addresses       = var.network_rule_collection_rule1_destination_addresses
  network_rule_collection_rule1_destination_ports           = var.network_rule_collection_rule1_destination_ports
  nat_rule_collection_rule_name                             = var.nat_rule_collection_rule_name
  nat_rule_collection_rule_priority                         = var.nat_rule_collection_rule_priority
  nat_rule_collection_rule_action                           = var.nat_rule_collection_rule_action
  nat_rule_collection_rule1_name                            = var.nat_rule_collection_rule1_name
  nat_rule_collection_rule1_protocols                       = var.nat_rule_collection_rule1_protocols
  nat_rule_collection_rule1_source_addresses                = var.nat_rule_collection_rule1_source_addresses
  nat_rule_collection_rule1_destination_address             = var.nat_rule_collection_rule1_destination_address
  nat_rule_collection_rule1_destination_ports               = var.nat_rule_collection_rule1_destination_ports
  nat_rule_collection_rule1_translated_address              = var.nat_rule_collection_rule1_translated_address
  nat_rule_collection_rule1_translated_port                 = var.nat_rule_collection_rule1_translated_port
  depends_on = [ module.resource_group, module.virtual_network]
}
module "application_security_group" {
 source = "./modules/securityservices/ASG"
 resource_group_name                                        = var.resource_group_name
 resource_group_location                                    = var.resource_group_location
 virtual_network_name                                       = var.virtual_network_name
 asgsubnet_name                                             = var.asgsubnet_name
 asgsubnet_address_prefixes                                 = var.asgsubnet_address_prefixes
 application_security_group_name                            = var.application_security_group_name
 NIC_name                                                   = var.NIC_name
 NIC_ip_configuration                                       = var.NIC_ip_configuration_name
 NIC_private_ip_address_allocation                          = var.NIC_private_ip_address_allocation
 depends_on = [ module.resource_group, module.virtual_network]
}
module "application_gateway" {
  source = "./modules/securityservices/APPGW"
  resource_group_name                                       = var.resource_group_name
  resource_group_location                                   = var.resource_group_location
  virtual_network_name                                      = var.virtual_network_name
  GatewaySubnet_name                                        = var.GatewaySubnet_name
  GatewaySubnet_address_prefixes                            = var.GatewaySubnet_address_prefixes
  appgw-pip_name                                            = var.appgw-pip_name
  appgw-pip_allocation_method                               = var.appgw-pip_allocation_method
  appgw-sku                                                 = var.appgw-sku 
  beap_name                                                 = var.beap_name
  feport_name                                               = var.feport_name
  feip_name                                                 = var.feip_name
  be-htst_name                                              = var.be-htst_name
  httplstn_name                                             = var.httplstn_name
  rqrt_name                                                 = var.rqrt_name 
  rdrcfg_name                                               = var.rdrcfg_name
  appgw_name                                                = var.appgw_name
  sku_name                                                  = var.sku_name
  sku_tier                                                  = var.sku_tier
  sku_capacity                                              = var.sku_capacity
  appgw_ip_configuration                                    = var.appgw_ip_configuration
  port                                                      = var.port
  frontend_port_name                                        = var.frontend_port_name
  frontend_ip_configuration_name                            = var.frontend_ip_configuration_name
  backend_address_pool_name                                 = var.backend_address_pool_name
  http_setting_name                                         = var.http_setting_name
  cookie_based_affinity                                     = var.cookie_based_affinity
  path                                                      = var.path
  bhs_protocol                                              = var.bhs_protocol
  bhs_port                                                  = var.bhs_port
  request_timeout                                           = var.request_timeout
  request_routing_rule_name                                 = var.request_routing_rule_name
  listener_name                                             = var.listener_name
  hl_protocol                                               = var.hl_protocol
  rule_type                                                 = var.rule_type  
  depends_on = [ module.resource_group, module.virtual_network]
}
module "log-analytics" {
  source = "./modules/securityservices/log-analytics"
  resource_group_name                                       = var.resource_group_name
  resource_group_location                                   = var.resource_group_location
  log_name                                                  = var.log_name
  log_sku                                                   = var.log_sku
  solution_name                                             = var.solution_name
  log_publisher_plan                                        = var.log_publisher_plan
  log_publisher_product                                     = var.log_publisher_product
  fusion_name                                               = var.fusion_name
  alert_rule_template_guid                                  = var.alert_rule_template_guid
  depends_on = [ module.resource_group ]
}
module "securitycenter" {
  source = "./modules/securityservices/securitycenter"
  resource_group_name                                       = var.resource_group_name
  resource_group_location                                   = var.resource_group_location
  eventhub_namespace_name                                   = var.eventhub_namespace_name
  eventhub_sku                                              = var.eventhub_sku
  capacity                                                  = var.capacity
  eventhub_name                                             = var.eventhub_name
  partition_count                                           = var.partition_count
  message_retention                                         = var.message_retention
  eventhub_authorization_rule_name                          = var.eventhub_authorization_rule_name
  listen                                                    = var.listen
  send                                                      = var.send
  manage                                                    = var.manage
  security_center_automation_name                           = var.security_center_automation_name
  type                                                      = var.type
  event_source                                              = var.event_source
  property_path                                             = var.property_path
  rule_operator                                             = var.rule_operator
  expected_value                                            = var.expected_value
  property_type                                             = var.property_type
  depends_on = [ module.resource_group]
}
module "key" {

  source = "./Modules/key"

  resource_group_name                   = var.resource_group_name
  resource_group_location               = var.resource_group_location
  key_vault_name                        = var.key_vault_name
  soft_delete_retention_days            = var.soft_delete_retention_days
  purge_protection_enabled              = var.purge_protection_enabled
  sku_name                              = var.sku_name
  key_permissions                       = var.key_permissions
  secret_permissions                    = var.secret_permissions
  storage_permissions                   = var.storage_permissions
  secret1_name                          = var.secret1_name
  secret1_value                         = var.secret1_value
  secret2_name                          = var.secret2_name
  secret2_value                         = var.secret2_value
  secret3_name                          = var.secret3_name
  secret3_value                         = var.secret3_value
  secret4_name                          = var.secret4_name
  secret4_value                         = var.secret4_value
  object_id                             = var.object_id 
  depends_on                            = [module.resource_group]
 

}

module "ManagementGroup" {

  source                                = "./Modules/ManagementGroup"

  display_name                          = var.display_name

  depends_on                            = [module.resource_group]
}



  


