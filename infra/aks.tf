resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.aks_name_eff
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "dns-${local.base}"

  identity { type = "SystemAssigned" }

  default_node_pool {
    name       = "sysnp"
    node_count = var.aks_node_count
    vm_size    = var.aks_node_size
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }

  tags = merge({ env = var.env, app = var.app_name }, var.tags)
}
