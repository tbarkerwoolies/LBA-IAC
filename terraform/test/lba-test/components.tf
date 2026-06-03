resource "azurerm_storage_account" "this_cd0f016f" {
  name                     = "spcspagstore2a"
  resource_group_name      = "lba-test-aae"
  location                 = "australiaeast"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  https_traffic_only_enabled = "true"
  tags = {}
}
output "comp_cd0f016f_name" {
  value     = azurerm_storage_account.this_cd0f016f.name
  sensitive = true
}
output "comp_cd0f016f_id" {
  value     = azurerm_storage_account.this_cd0f016f.id
  sensitive = true
}
output "comp_cd0f016f_primary_access_key" {
  value     = azurerm_storage_account.this_cd0f016f.primary_access_key
  sensitive = true
}
output "comp_cd0f016f_primary_connection_string" {
  value     = azurerm_storage_account.this_cd0f016f.primary_connection_string
  sensitive = true
}
output "comp_cd0f016f_primary_blob_endpoint" {
  value     = azurerm_storage_account.this_cd0f016f.primary_blob_endpoint
  sensitive = true
}
