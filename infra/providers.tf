terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.110"
    }
  }
}

provider "azurerm" {
  features {}
  # NOTE:
  # If you run Terraform from GitHub Actions with OIDC, prefer env:
  #   ARM_CLIENT_ID / ARM_TENANT_ID / ARM_SUBSCRIPTION_ID / ARM_USE_OIDC=true
  # Otherwise you can pass subscription_id via tfvars.
  subscription_id = var.subscription_id != "" ? var.subscription_id : null
}
