resource "azurerm_resource_group" "rgs" {
  name = "shivamsona"
  location = "centralindia"
}

resource "azurerm_virtual_network" "vnets" {
    depends_on = [ azurerm_resource_group.rgs ]
  name = "shivam-vnets"
  location = "centralindia"
  resource_group_name = "shivamsona"
  address_space = ["10.0.0.0/16"]
}