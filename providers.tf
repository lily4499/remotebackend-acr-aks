# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


# Azure Backend, Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "tfstaterg"  # Specify the Azure resource group for backend storage
    storage_account_name  = "lilibackendsa"  # Specify the name of the Azure Storage Account
    container_name        = "tfstatect"               # Specify the container within the Storage Account
    key                   = "terraform.tfstate"      # Specify the filename for the Terraform state file
  }
}
