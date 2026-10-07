terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstateandre2510"
    container_name       = "tfstate"
    key                  = "fullstack-react.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"

    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}
