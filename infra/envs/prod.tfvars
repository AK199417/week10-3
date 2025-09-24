env                 = "prod"
resource_group_name = "deakinuni"
acr_name            = "prodacr"
aks_name            = "prodaks"
aks_node_count      = 2

law_name                  = "" # auto-name ecom-prod-law
law_retention_days        = 30
enable_container_insights = true

tags = { env = "prod" }
