# -------------------------------------
# Resource group
# -------------------------------------
resource "azurerm_resource_group" "rg" {
  name     = "${var.prj}-${var.env}-${var.location}-rg"
  location = var.location
}


# -------------------------------------
# App Service Plan
# -------------------------------------
resource "azurerm_service_plan" "asp" {
  name                = "${var.prj}-${var.env}-${var.location}-asp"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = var.sku
}

# -------------------------------------
# Web App
# -------------------------------------
resource "azurerm_linux_web_app" "app" {
  name                = "${var.prj}-${var.env}-${var.location}-app"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id
  https_only          = true
  site_config {
    minimum_tls_version = "1.2"
  }
}
