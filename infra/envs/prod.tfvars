env      = "prod"
app_name = "ecom"
location = "australiaeast"

acr_name = "prodacr"
aks_name = "prodaks"

aks_node_count = 3
aks_node_size  = "Standard_D4s_v5"

tags = {
  owner = "AK"
  stage = "prod"
}
