resource "azurerm_virtual_network" "vnet" {
  name                = "${terraform.workspace}-${var.project}-${var.zone}-${var.lob}-${var.location}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.vnet_cidr]
  dns_servers         = var.dns_servers
  
    tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }
}


resource "azurerm_network_watcher" "network_watcher" {
  name                = "${terraform.workspace}-${var.project}-${var.zone}-${var.lob}-${var.location}-nwat"
  location            = var.location
  resource_group_name = var.resource_group_name

    tags = {
    environment       = terraform.workspace
    project           = var.project
    lob               = var.lob
    zone              = var.zone
  }
}

resource "azurerm_monitor_diagnostic_setting" "diag_settings" {
  name                       = "${azurerm_virtual_network.vnet.name}-diag"
  target_resource_id         = azurerm_virtual_network.vnet.id
  log_analytics_workspace_id = var.law_id

  log {
    category = "VMProtectionAlerts"
    enabled  = true

    retention_policy {
      enabled = false
      days = var.diag_retention
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
      days = var.diag_retention
    }
  }
}
