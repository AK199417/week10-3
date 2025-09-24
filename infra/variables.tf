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

variable "resource_group_name" {
  description = "Existing Azure Resource Group to deploy into"
  type        = string
}

variable "acr_name" {
  type = string
}

variable "aks_name" {
  type = string
}

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

# 🔽 NEW: Log Analytics options
variable "law_name" {
  description = "Optional custom name for Log Analytics Workspace; if empty, a name will be generated."
  type        = string
  default     = ""
}

variable "law_retention_days" {
  type    = number
  default = 30
}

variable "enable_container_insights" {
  description = "Enable AKS OMS agent hooked to Log Analytics."
  type        = bool
  default     = true
}
