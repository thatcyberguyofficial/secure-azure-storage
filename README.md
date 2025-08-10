# 🛡️ Secure Azure Storage Deployment with Terraform

## Oveerview

This project demonstrates how to securely deploy an Azure Storage Account using Terraform, enforce custom security policies, and enable centralized logging via Log Analytics. It follows infrastructure-as-code best practices with modular files, reusable variables, and clean outputs.

### What This Project Includes

- ✅ **Resource Group** in Azure
- ✅ **Storage Account** with TLS 1.2 enforced
- ✅ **Custom Azure Policy** to block public network access
- ✅ **Log Analytics Workspace** for centralized logging
- ✅ **Diagnostic Settings** for blob read/write/delete operations
- ✅ **Modular Terraform files** (`main.tf`, `logging.tf`, `variables.tf`, `outputs.tf`)

---

#### Technologies Used

- **Terraform** v1.12.2
- **AzureRM Provider** 
- **Azure CLI** v2.76
- **GitHub** for version control and collaboration
-  **VS Code** 

---

## File Structure

├── main.tf           # Core resources: resource group + storage account
├── logging.tf        # Log Analytics + diagnostic settings
├── variables.tf      # Reusable input variables
├── outputs.tf        # Useful output values
├── policy.md         # Documentation for custom Azure Policy
├── README.md         # Project overview
