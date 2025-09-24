locals {
  law_name_effective = var.law_name != "" ? var.law_name : "${var.app_name}-${var.env}-law"
}

resource "azurerm_log_analytics_workspace" "law" {
  name                = local.law_name_effective
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = var.law_retention_days

  tags = merge(var.tags, { env = var.env, app = var.app_name })
}

# (Optional) Classic Container Insights solution (works for many labs/classes)
# If you don't want this, you can remove this block.
resource "azurerm_log_analytics_solution" "container_insights" {
  count               = var.enable_container_insights ? 1 : 0
  solution_name       = "ContainerInsights"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  workspace_resource_id = azurerm_log_analytics_workspace.law.id
  workspace_name        = azurerm_log_analytics_workspace.law.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
