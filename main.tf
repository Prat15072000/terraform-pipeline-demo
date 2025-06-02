terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

variable "azure_subscription" {}

# provider "azurerm" {
#   subscription_id = var.azure_subscription
#   features {}
# }

provider "azurerm" {
  # Configuration options
  subscription_id = var.azure_subscription
  features {
    # resource_group {
    #   prevent_deletion_if_contains_resources = false
    # }
  }
}

