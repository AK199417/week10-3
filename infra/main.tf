# Read the existing Resource Group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

# ACR (import if it already exists; otherwise TF will create)
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = false
  tags                = merge(var.tags, { env = var.env, app = var.app_name })
}

# AKS (import if it already exists; otherwise TF will create)
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  dns_prefix          = "${var.app_name}-${var.env}"

  default_node_pool {
    name       = "system"
    node_count = var.aks_node_count
    vm_size    = var.aks_node_size
    type       = "VirtualMachineScaleSets"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  tags = merge(var.tags, { env = var.env, app = var.app_name })
}
