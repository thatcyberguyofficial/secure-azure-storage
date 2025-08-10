resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = "securestorage-law"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 180
}

resource "azurerm_monitor_diagnostic_setting" "storage_logs" {
  name                       = "storage-diagnostics"
  target_resource_id         = azurerm_storage_account.storage.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.log_analytics.id

  log {
    category = "StorageRead"
    enabled  = true
    retention_policy {
      enabled = false
      days    = 0
    }
  }

  log {
    category = "StorageWrite"
    enabled  = true
    retention_policy {
      enabled = false
      days    = 0
    }
  }

  log {
    category = "StorageDelete"
    enabled  = true
    retention_policy {
      enabled = false
      days    = 0
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true
    retention_policy {
      enabled = false
      days    = 0
    }
  }
}
