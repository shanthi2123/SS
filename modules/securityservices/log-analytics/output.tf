output " workspace_resource_id" {
    value = azurerm_log_analytics_workspace.log.id
}
output "workspace_name" {
    value = azurerm_log_analytics_workspace.log.name
}
output "log_analytics_workspace_id" {
    value = azurerm_log_analytics_solution.solution.workspace_resource_id
}