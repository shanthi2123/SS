data "azurerm_client_config" "current" {}

resource "azurerm_eventhub_namespace" "namespace" {
  name                = var.eventhub_namespace_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku                 = var.eventhub_sku
  capacity            = var.capacity
}
resource "azurerm_eventhub" "eventhub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.namespace.name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}
resource "azurerm_eventhub_authorization_rule" "example" {
  name                = var.eventhub_authorization_rule_name
  namespace_name      = azurerm_eventhub_namespace.namespace.name
  eventhub_name       = azurerm_eventhub.eventhub.name
  resource_group_name = var.resource_group_name
  listen              = var.listen
  send                = var.send
  manage              = var.manage
}
resource "azurerm_security_center_automation" "security_center" {
  name                = var.security_center_automation_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  action {
    type              = var.type
    resource_id       = azurerm_eventhub.eventhub.id
    connection_string = azurerm_eventhub_authorization_rule.example.primary_connection_string
  }
  source {
    event_source = var.event_source
    rule_set {
      rule {
        property_path  = var.property_path
        operator       = var.rule_operator
        expected_value = var.expected_value
        property_type  = var.property_type
      }
    }
  }
    scopes = ["/subscriptions/${data.azurerm_client_config.current.subscription_id}"]
}
