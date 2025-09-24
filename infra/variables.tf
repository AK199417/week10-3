variable "subscription_id" {
  description = "Optional; if empty, provider uses ARM_* env from azure/login."
  type        = string
  default     = ""
}

variable "location" {
  type    = string
  default = "australiaeast"
}

variable "env" {
  description = "Environment name: dev | prod"
  type        = string
}

variable "app_name" {
  type    = string
  default = "ecom"
}

# Explicit names (so you can get devacr/prodacr, devaks/prodaks)
variable "acr_name" {
  type    = string
  default = ""
}

variable "aks_name" {
  type    = string
  default = ""
}

# AKS sizing
variable "aks_node_count" {
  type    = number
  default = 2
}

variable "aks_node_size" {
  type    = string
  default = "Standard_B4ms"
}

variable "tags" {
  type    = map(string)
  default = {}
}
