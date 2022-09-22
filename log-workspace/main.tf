
resource "random_string" "random_number" {
  length           = 16
  special          = false
  upper            = false
  lower            = false
  number           = true
  min_numeric      = 16
}

resource "azurerm_log_analytics_workspace" "law" {
  name                = "${terraform.workspace}${random_string.random_number.result}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days

  tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }  
}