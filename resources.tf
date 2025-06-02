resource "azurerm_resource_group" "tf-rg" {
  name = "tf-rggg"
  location = "East US"
}

resource "azurerm_resource_group" "something-rg" {
  name = "delete it rg"
  location = "East US"
}