terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "iheb-tfstate-rg"
    storage_account_name = "ihebtfhru4p07f"
    container_name       = "core-tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}


provider "azurerm" {
  features {}
}