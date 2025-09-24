env                 = "prod"
resource_group_name = "deakinuni"  # existing RG
acr_name            = "prodacr"
aks_name            = "prodaks"
aks_node_count      = 2

tags = { env = "prod" }
