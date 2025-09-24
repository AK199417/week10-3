env                 = "dev"
resource_group_name = "deakinuni"
acr_name            = "devacr"
aks_name            = "devaks"
aks_node_count      = 1

# Log Analytics options (optional)
law_name                  = "" # keep empty to auto-name ecom-dev-law
law_retention_days        = 30
enable_container_insights = true

tags = { env = "dev" }
