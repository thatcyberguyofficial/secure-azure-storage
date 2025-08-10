# Outputs the unique ID of the Azure Storage Account.
output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.storage.id
}

# Outputs the unique ID of the Log Analytics workspace.
output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace"
  value       = azurerm_log_analytics_workspace.log_analytics.id
}

# Outputs the name of the Log Analytics workspace.
output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  value       = azurerm_log_analytics_workspace.log_analytics.name
}
