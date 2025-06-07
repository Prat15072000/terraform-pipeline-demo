resource "azurerm_resource_group" "tf-rg" {
  name = "tf-rggg"
  location = "East US"
}

resource "azurerm_resource_group" "something-rg" {
  name = "delete_it_rg"
  location = "East US"
}

#nbnbn