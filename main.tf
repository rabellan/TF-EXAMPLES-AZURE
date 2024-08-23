terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~2.31.1"
    }
  }
}

# Provides config details for the Azure Teraform provider
provider "azurerm" {
  features {
    
  }
}

# Provides the Resource Group to Logically contain resources
resource "azurerm_resource_group" "rg" {
  name = "like-and-subscribe"
  location = "West US"
  tags = {
    environment = "dev"
    source = "Terraform"
  }
}