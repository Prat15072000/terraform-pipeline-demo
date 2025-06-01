terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "7e185f1c-e860-425a-adf9-922e298f43dc"
  features {
    # resource_group {
    #   prevent_deletion_if_contains_resources = false
    # }
  }
}

