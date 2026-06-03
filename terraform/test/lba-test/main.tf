# Customer-owned configuration. Subsequent Odessa reconciles will not
# overwrite this file (overwriteOnCreate=false). Backend configuration
# lives in the sibling `backend.tf` — DO NOT add a backend block here.
#
# AS: lba-test (test / australiaeast / azure)
# Stack: test

terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# --- BEGIN CUSTOMER-OWNED CONFIGURATION ---
# Odessa pre-provisions the resource group, NSG/ASGs, UAMI, and (optionally)
# Key Vault and Private DNS zone for this application service. Reference
# them via data sources, e.g.:
#
#   data "azurerm_resource_group" "primary" {
#     name = "<rg-name>"
#   }
#
#   data "azurerm_user_assigned_identity" "workload" {
#     name                = "<uami-name>"
#     resource_group_name = data.azurerm_resource_group.primary.name
#   }
#
# Workspace variables (TLA, APPLICATION_SERVICE_ID, KEY_VAULT_URL, etc.)
# are populated by Odessa via the TFC API — see the workspace settings,
# not local *.tfvars.
