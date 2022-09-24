resource "azurerm_resource_group" "resource_group" {
  name     = "${terraform.workspace}-${var.project}-${var.zone}-${var.lob}-${var.location}-rg"
  location = var.location

  tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }
}