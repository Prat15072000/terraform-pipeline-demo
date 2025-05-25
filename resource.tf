resource "azurerm_virtual_network" "march-vnet" {
  name = var.vnet
  address_space = [ "10.0.0.0/16" ]
  location = "West US"
  resource_group_name = azurerm_resource_group.march-rg.name
  tags = var.tags
}

resource "azurerm_subnet" "default-subnet-march" {
  name = "subnet001"
  address_prefixes = [ "10.0.1.0/24" ]
  virtual_network_name = azurerm_virtual_network.march-vnet.name
  resource_group_name = azurerm_resource_group.march-rg.name
}

resource "azurerm_virtual_network" "feb-vnet" {
  name = "feb-vnet001"
  location = "eastus"
  address_space = [ "172.16.0.0/16" ]
  resource_group_name = azurerm_resource_group.march-rg.name
  tags = var.tags
}

resource "azurerm_subnet" "default" {
  name = "default"
  address_prefixes = [ "172.16.0.0/24" ]
  virtual_network_name = azurerm_virtual_network.feb-vnet.name
  resource_group_name = azurerm_resource_group.march-rg.name
}

resource "azurerm_subnet" "gateway" {
  name = "gateway-subnet"
  address_prefixes = ["172.16.1.0/24"]
  virtual_network_name = azurerm_virtual_network.feb-vnet.name
  resource_group_name = azurerm_resource_group.march-rg.name
}

resource "azurerm_nat_gateway" "nat-feb-vnet" {
  name = "nat-gw-feb"
  resource_group_name = azurerm_resource_group.march-rg.name
  location = "eastus"
}
