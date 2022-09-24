output "name" {
  value = azurerm_subnet.subnet.name
}

output "id" {
  value = azurerm_subnet.subnet.id
}

output "address_prefix" {
  value = azurerm_subnet.subnet.address_prefixes
}
