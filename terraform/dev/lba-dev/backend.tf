# DO NOT EDIT — managed by Odessa Tenancy Controller.
# This file is re-rendered on every reconcile (overwriteOnCreate=true).

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hostingplatform-qa"
    storage_account_name = "sthostingplatforvv51b"
    container_name       = "tfstate"
    key                  = "applications/lba/stacks/dev/lba-dev/terraform.tfstate"
  }
}
