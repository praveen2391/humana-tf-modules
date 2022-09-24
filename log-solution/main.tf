
resource "azurerm_log_analytics_solution" "las" {
  solution_name         = var.plan_product
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = var.workspace_resource_id
  workspace_name        = var.workspace_name

  plan {
    publisher = var.plan_publisher
    product   = "${var.plan_gallery}/${var.plan_product}"
  }
}