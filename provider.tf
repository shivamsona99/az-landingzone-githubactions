terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "shivterraformstate12345"
    container_name       = "tfstate"
    key                  = "az-landingzone.tfstate"

    }
}
provider "azurerm" {
  features {

  }
}