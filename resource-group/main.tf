resource "azurerm_resource_group" "resource_group" {
  name     = "${terraform.workspace}-${var.lob}-${var.project}-${var.zone}-${var.location}-rg"
  location = var.location

  tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }
}