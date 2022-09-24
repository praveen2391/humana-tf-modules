output "name" {
  value = azurerm_storage_account.storage_account.name
}

output "location" {
  value = azurerm_storage_account.storage_account.location
}

output "id" {
  value = azurerm_storage_account.storage_account.id
} 

output "primary_connection_string" {
  sensitive = true
  value = element(concat(azurerm_storage_account.storage_account.*.primary_connection_string, var.null_list), 0)
}

output "primary_access_key" {
  sensitive = true
  value = element(concat(azurerm_storage_account.storage_account.*.primary_access_key, var.null_list), 0)
}