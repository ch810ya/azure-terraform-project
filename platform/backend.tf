terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"          # 👈 from bootstrap output
    storage_account_name = "tfstatechai001"    # 👈 from bootstrap output
    container_name       = "tfstate"             # 👈 from bootstrap output
    key                  = "platform.tfstate"    # 👈 name of the state file in that container
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
