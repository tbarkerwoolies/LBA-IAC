# DO NOT EDIT — managed by Odessa Tenancy Controller.
# This file pins the Terraform + provider baseline for every stack under
# this repository. Add additional provider requirements in your stack's
# own *.tf files rather than editing here.

terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
