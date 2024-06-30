terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.110.0"
    }
  }
    backend "azurerm" {
      key                  = "terraform.tfstate"
      resource_group_name  = "tfstate"
      storage_account_name = "tfstatedev12345"
      container_name       = "tfstate"
    }
}

provider "azurerm" {
  features {}
  use_oidc = true
  storage_use_azuread = true
}

resource "azurerm_resource_group" "this" {
  name     = "test"
  location = "West Europe"
}