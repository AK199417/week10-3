variable "subscription_id" {
  description = "Optional; if empty, provider uses ARM_* env from azure/login."
  type        = string
  default     = ""
}

variable "env" {
  description = "Environment name: dev | prod"
  type        = string
}

variable "app_name" {
  type    = string
  default = "ecom"
}

# 🔹 Use an existing RG by name
variable "resource_group_name" {
  description = "Name of an existing Azure Resource Group to deploy into"
  type        = string
}

# Explicit names so you get devacr/prodacr, devaks/prodaks
variable "acr_name" {
  type = string
}

variable "aks_name" {
  type = string
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
