output "name" {
  value = azurerm_log_analytics_workspace.law.name
}

output "location" {
  value = azurerm_log_analytics_workspace.law.location
}

output "id" {
  value = azurerm_log_analytics_workspace.law.id
}

output "workspace_id" {
  value = azurerm_log_analytics_workspace.law.workspace_id
}

output "primary_shared_key" {
  value = azurerm_log_analytics_workspace.law.primary_shared_key
}

output "secondary_shared_key" {
  value = azurerm_log_analytics_workspace.law.secondary_shared_key
}
