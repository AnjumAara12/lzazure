terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.17.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}



provider "azurerm" {
 features {}
}