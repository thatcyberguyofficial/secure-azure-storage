# 🔒 Azure Policy: Deny Public Network Access on Storage Accounts

## Overview
This custom Azure Policy enforces secure network configurations by **denying the creation or update of any storage account with public network access enabled**. It ensures that all storage accounts are isolated from the public internet unless explicitly allowed through private endpoints or trusted networks.

---

## 🛠️ Policy Definition

```json
{
  "properties": {
    "displayName": "Deny public network access on Storage Accounts",
    "policyType": "Custom",
    "mode": "All",
    "description": "This policy denies storage accounts that have public network access enabled.",
    "metadata": {
      "version": "1.0.0",
      "category": "Storage"
    },
    "parameters": {},
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
            "field": "Microsoft.Storage/storageAccounts/publicNetworkAccess",
            "equals": "Enabled"
          }
        ]
      },
      "then": {
        "effect": "Deny"
      }
    }
  }
}
