resource "azurerm_log_analytics_workspace" "this_bf8dfc02" {
  name                = "lby-log"
  location            = "australiaeast"
  resource_group_name = "lba-dev-aae"
  sku                 = "PerGB2018"
  retention_in_days   = "30"
  tags                = {}
}
resource "azurerm_service_plan" "this_2153b6cd" {
  name                = "lby-plan"
  resource_group_name = "lba-dev-aae"
  location            = "australiaeast"
  os_type             = "Linux"
  sku_name            = "Y1"
  tags                = {}
}
resource "azurerm_storage_account" "this_2a028927" {
  name                     = "lbystore"
  resource_group_name      = "lba-dev-aae"
  location                 = "australiaeast"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  https_traffic_only_enabled = "false"
  tags = {}
}
resource "azurerm_storage_account" "this_1708084a" {
  name                     = "spcspagstore2"
  resource_group_name      = "lba-dev-aae"
  location                 = "australiaeast"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  https_traffic_only_enabled = "true"
  tags = {}
}
resource "azurerm_application_insights" "this_bcab3f9d" {
  name                = "lby-ai"
  resource_group_name = "lba-dev-aae"
  location            = "australiaeast"
  workspace_id        = azurerm_log_analytics_workspace.this_bf8dfc02.id
  application_type    = "web"
  tags                = {}
}
resource "azurerm_linux_function_app" "this_7e69997a" {
  name                       = "lby-func"
  resource_group_name        = "lba-dev-aae"
  location                   = "australiaeast"
  service_plan_id            = azurerm_service_plan.this_2153b6cd.id
  storage_account_name       = azurerm_storage_account.this_2a028927.name
  storage_account_access_key = azurerm_storage_account.this_2a028927.primary_access_key
  https_only                 = "true"
  tags                       = {}

  site_config {}
}
output "comp_bf8dfc02_id" {
  value     = azurerm_log_analytics_workspace.this_bf8dfc02.id
  sensitive = true
}
output "comp_bf8dfc02_workspace_id" {
  value     = azurerm_log_analytics_workspace.this_bf8dfc02.workspace_id
  sensitive = true
}
output "comp_bf8dfc02_primary_shared_key" {
  value     = azurerm_log_analytics_workspace.this_bf8dfc02.primary_shared_key
  sensitive = true
}
output "comp_2153b6cd_id" {
  value     = azurerm_service_plan.this_2153b6cd.id
  sensitive = true
}
output "comp_2153b6cd_name" {
  value     = azurerm_service_plan.this_2153b6cd.name
  sensitive = true
}
output "comp_2a028927_name" {
  value     = azurerm_storage_account.this_2a028927.name
  sensitive = true
}
output "comp_2a028927_id" {
  value     = azurerm_storage_account.this_2a028927.id
  sensitive = true
}
output "comp_2a028927_primary_access_key" {
  value     = azurerm_storage_account.this_2a028927.primary_access_key
  sensitive = true
}
output "comp_2a028927_primary_connection_string" {
  value     = azurerm_storage_account.this_2a028927.primary_connection_string
  sensitive = true
}
output "comp_2a028927_primary_blob_endpoint" {
  value     = azurerm_storage_account.this_2a028927.primary_blob_endpoint
  sensitive = true
}
output "comp_1708084a_name" {
  value     = azurerm_storage_account.this_1708084a.name
  sensitive = true
}
output "comp_1708084a_id" {
  value     = azurerm_storage_account.this_1708084a.id
  sensitive = true
}
output "comp_1708084a_primary_access_key" {
  value     = azurerm_storage_account.this_1708084a.primary_access_key
  sensitive = true
}
output "comp_1708084a_primary_connection_string" {
  value     = azurerm_storage_account.this_1708084a.primary_connection_string
  sensitive = true
}
output "comp_1708084a_primary_blob_endpoint" {
  value     = azurerm_storage_account.this_1708084a.primary_blob_endpoint
  sensitive = true
}
output "comp_bcab3f9d_id" {
  value     = azurerm_application_insights.this_bcab3f9d.id
  sensitive = true
}
output "comp_bcab3f9d_instrumentation_key" {
  value     = azurerm_application_insights.this_bcab3f9d.instrumentation_key
  sensitive = true
}
output "comp_bcab3f9d_connection_string" {
  value     = azurerm_application_insights.this_bcab3f9d.connection_string
  sensitive = true
}
output "comp_7e69997a_default_hostname" {
  value     = azurerm_linux_function_app.this_7e69997a.default_hostname
  sensitive = true
}
output "comp_7e69997a_id" {
  value     = azurerm_linux_function_app.this_7e69997a.id
  sensitive = true
}
