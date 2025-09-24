# PROD also uses existing RG: deakinuni
env                 = "prod"
resource_group_name = "deakinuni"

acr_name       = "prodacr"
aks_name       = "prodaks"
aks_node_count = 2

tags = {
  owner = "you"
  env   = "prod"
}
