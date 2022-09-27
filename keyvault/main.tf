resource "random_string" "kv_name" {
  length = 20
  special = false
  upper = false
  lower = false
  number = true
  min_numeric = 20
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  tenant_id                   = var.tenant_id
  name                        = "${terraform.workspace}${random_string.kv_name.result}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  enabled_for_deployment      = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment
  sku                             = var.sku

  tags = {
    "environment" = "${terraform.workspace}"
    "location"    = "${var.location}"
    "project"     = "${var.project}"
    "lob"         = "${var.lob}"
    "zone"        = "${var.zone}"
  }

} 

resource "azurerm_key_vault_access_policy" "keyvault" {
  key_vault_id = azurerm_key_vault.keyvault.id
  tenant_id = var.tenant_id
  object_id = data.azurerm_client_config.current.service_principal_object_id

  key_permissions = [ 
    "create",
    "get",
    "list",
    "delete",
  ]

  secret_permissions = [ 
    "set",
    "get",
    "list",
    "delete",
  ]

  certificate_permissions = [ 
    "create",
    "get",
    "list",
    "delete",
  ]
}