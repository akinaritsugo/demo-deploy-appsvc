# Account Information
# ------------------------------------------
variable "SUBSCRIPTION_ID" {
  type = string
}

variable "TENANT_ID" {
  type = string
}

# Resouce Information
# ------------------------------------------
variable "location" {
  type    = string
  default = "japaneast"
}

variable "prefix" {
  type    = string
  default = "z-appsvc-test"
}

variable "sku" {
  type    = string
  default = "B1"
}

variable "location_map" {
  type = map(string)
  default = {
    "us1"   = "eastus"
    "apac5" = "japaneast"
  }
}