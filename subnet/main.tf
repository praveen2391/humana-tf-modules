
resource "azurerm_subnet" "subnet" {
  name                 = "${terraform.workspace}-${var.project}-${var.zone}-${var.lob}-${var.location}-sn"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [cidrsubnet(var.vnet_cidr, var.subnet_cidr_size, var.subnet_cidr_netnum)]
  service_endpoints = var.service_endpoints
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies

  tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }  
}