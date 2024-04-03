terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.5.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}

  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
}
