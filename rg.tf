resource "azurerm_resource_group" "rgs" {
  name     = "shivamsona"
  location = "centralindia"
}
resource "azurerm_resource_group" "rgs1" {
  name     = "shivamsonasingh"
  location = "centralindia"
}

resource "azurerm_virtual_network" "vnets" {
  depends_on = [ azurerm_resource_group.rgs ]
  name                = "shivam-vnets"
  location            = "centralindia"
  resource_group_name = "shivamsona"
  address_space       = ["10.0.0.0/16"]
}
# Both the resource group and virtual network must be in the same region for best practics
resource "azurerm_virtual_network" "name" {
  depends_on = [ azurerm_resource_group.rgs1]
  name                = "shivam-vnets"
  location            = "centralindia"
  resource_group_name = "shivamsonasingh"
  address_space       = ["10.0.0.0/16"]
}