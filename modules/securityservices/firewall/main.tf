resource "azurerm_subnet" "firewallsubnet" {
  name                 = var.azurefirewallsubnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.azurefirewallsubnet_address_prefixes
}
resource "azurerm_public_ip" "publicip" {
  name                = var.public_ip_firewall_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_firewall_allocation_method
  sku                 = var.public_ip_firewall_sku
}

 

resource "azurerm_firewall" "firewall" {
  name                = var.firewall_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku_name            = var.firewall_sku_name
  sku_tier            = var.firewall_sku_tier

 

  ip_configuration {
    name                 = var.ip_configuration_name
    subnet_id            = azurerm_subnet.firewallsubnet.id
    public_ip_address_id = azurerm_public_ip.publicip.id
  }

 

  
}
resource "azurerm_firewall_policy" "firewallpolicy" {
  name                = var.firewall_policy_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}
resource "azurerm_firewall_policy_rule_collection_group" "policycollection" {
  name               = var.firewall_policy_rule_collection_group_name
  firewall_policy_id = azurerm_firewall_policy.firewallpolicy.id
  priority           = var.firewall_policy_rule_collection_group_priority
  application_rule_collection {
    name     = var.app_rule_collection_name
    priority = var.app_rule_collection_priority
    action   = var.app_rule_collection_action
    rule {
      name = var.app_rule_collection_rule1
      protocols {
        type = var.app_rule_collection_rule1_protocol1
        port = var.app_rule_collection_rule1_port1
      }
      protocols {
        type = var.app_rule_collection_rule1_protocol2
        port = var.app_rule_collection_rule1_port2
      }
      source_addresses  = var.app_rule_collection_source_addresses
      destination_fqdns = var.app_rule_collection_destination_fqdns
    }
  }

 

  network_rule_collection {
    name     = var.network_rule_collection_name
    priority = var.network_rule_collection_priority
    action   = var.network_rule_collection_action
    rule {
      name                  = var.network_rule_collection_rule1_name
      protocols             = var.network_rule_collection_rule1_protocols
      source_addresses      = var.network_rule_collection_rule1_source_addresses
      destination_addresses = var.network_rule_collection_rule1_destination_addresses
      destination_ports     = var.network_rule_collection_rule1_destination_ports
    }
  }

 

  nat_rule_collection {
    name     = var.nat_rule_collection_rule_name
    priority = var.nat_rule_collection_rule_priority
    action   = var.nat_rule_collection_rule_action
    rule {
      name                = var.nat_rule_collection_rule1_name
      protocols           = var.nat_rule_collection_rule1_protocols
      source_addresses    = var.nat_rule_collection_rule1_source_addresses
      destination_address = var.nat_rule_collection_rule1_destination_address
      destination_ports   = var.nat_rule_collection_rule1_destination_ports
      translated_address  = var.nat_rule_collection_rule1_translated_address
      translated_port     = var.nat_rule_collection_rule1_translated_port
    }
  }
}