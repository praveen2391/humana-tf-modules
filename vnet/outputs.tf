output "name" {
  value = azurerm_virtual_network.vnet.name
}

output "id" {
  value = azurerm_virtual_network.vnet.id
}

output "cidr" {
  value = azurerm_virtual_network.vnet.address_space.0
}

output "location" {
  value = azurerm_virtual_network.vnet.location
}

output "resource_group" {
  value = azurerm_virtual_network.vnet.resource_group_name
}

output "dns_servers" {
  value = azurerm_virtual_network.vnet.dns_servers
}