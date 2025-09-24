# Use an existing Resource Group (e.g., "deakinuni")
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}
