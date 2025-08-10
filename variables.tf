# Specifies the Azure region where all resources will be deployed.
# You can override this default when running Terraform by passing a different value.
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westus2"
}

# Defines the name of the resource group that will contain all Azure resources.
# Make sure this name is unique within your subscription.
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "secure-storage-rg"
}

# Sets the name of the Azure Storage Account.
# Must be globally unique and follow Azure naming rules (3–24 lowercase letters and numbers).
variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "securestorage25"
}

# Specifies the name of the Log Analytics workspace used for diagnostics and monitoring.
# This workspace will collect logs and metrics from the storage account.
variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "securestorage-law"
}
