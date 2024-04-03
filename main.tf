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

resource "random_string" "uniquekey" {
  length  = 6
  lower   = true
  upper   = false
  numeric = true
  special = false
}

module "appservice" {
  for_each = var.location_map

  source = "./modules/appservice"

  location = each.value
  prj      = var.prefix
  env      = random_string.uniquekey.result
  sku      = var.sku
}