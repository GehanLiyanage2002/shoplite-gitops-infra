terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
  # Create this storage account once manually or via bootstrap script
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "shoplitetfstate01"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}