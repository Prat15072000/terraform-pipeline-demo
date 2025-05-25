resource "azurerm_resource_group" "march-rg" {
  name     = var.resource_group_name
  location = "West US"
  tags = var.tags
}
