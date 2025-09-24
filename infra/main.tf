locals {
  base    = lower("${var.app_name}-${var.env}")
  rg_name = "rg-${local.base}"

  # If explicit names provided, use them; else fall back to computed
  aks_name_eff = length(var.aks_name) > 0 ? var.aks_name : "aks-${local.base}"
  # ACR must be 5-50 alnum
  acr_name_eff = length(var.acr_name) > 0 ? var.acr_name : regexreplace(lower("acr${var.app_name}${var.env}"), "[^a-z0-9]", "")
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = merge({ env = var.env, app = var.app_name }, var.tags)
}
