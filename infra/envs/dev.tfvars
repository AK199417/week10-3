# DEV uses existing RG: deakinuni
env                 = "dev"
resource_group_name = "deakinuni"

# keep your own names if you like
acr_name       = "devacr"
aks_name       = "devaks"
aks_node_count = 1

# optional tags
tags = {
  owner = "you"
  env   = "dev"
}
