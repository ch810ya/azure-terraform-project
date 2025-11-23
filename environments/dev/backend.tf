terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"         # from bootstrap outputs
    storage_account_name = "tfstatechai001"   # your actual tfstate storage
    container_name       = "tfstate"
    key                  = "env-dev.tfstate"    # 👈 unique key for dev
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
