resource "azurerm_log_analytics_workspace" "log" {
  name                = var.log_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku                 = var.log_sku
}

resource "azurerm_log_analytics_solution" "solution" {
  solution_name         = var.solution_name
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log.id
  workspace_name        = azurerm_log_analytics_workspace.log.name

  plan {
    publisher = var.log_publisher_plan
    product   = var.log_publisher_product
  }
}

resource "azurerm_sentinel_alert_rule_fusion" "fusion" {
  name                       = var.fusion_name
  log_analytics_workspace_id = azurerm_log_analytics_solution.solution.workspace_resource_id
  alert_rule_template_guid   = var.alert_rule_template_guid
}