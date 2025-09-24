# RG
output "rg_name" { value = azurerm_resource_group.rg.name }

# ACR
output "acr_name" { value = azurerm_container_registry.acr.name }
output "acr_id" { value = azurerm_container_registry.acr.id }
output "acr_login_server" { value = azurerm_container_registry.acr.login_server }

# AKS
output "aks_name" { value = azurerm_kubernetes_cluster.aks.name }
output "aks_rg" { value = azurerm_resource_group.rg.name }

# Summary
output "summary" {
  value = {
    env = var.env
    rg  = azurerm_resource_group.rg.name
    aks = azurerm_kubernetes_cluster.aks.name
    acr = azurerm_container_registry.acr.login_server
    loc = var.location
  }
}
