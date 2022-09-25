resource "random_string" "sa_name" {
  length = var.length
  special = false
  upper = false
  lower = false
  number = true
  min_numeric = var.length
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "${lower(terraform.workspace)}${random_string.sa_name.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "StorageV2"
  enable_https_traffic_only = true

  tags = {
    environment = terraform.workspace
  }
}