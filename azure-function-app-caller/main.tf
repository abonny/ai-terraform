terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d5736eb1-f851-4ec3-a2c5-ac8d84d029e2"
}
