resource "azurerm_resource_group" "devopsrg" {
  name     = "${var.devopsrg}"
  location = "${var.location}"
}

resource "azurerm_resource_group" "aksrg" {
  name     = "${var.aksrg}"
  location = "${var.location}"
}

resource "azurerm_resource_group" "test_rg" {
  name     = "test_rg"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet}"
  address_space       = "${var.address_space}"
  dns_servers         = "${var.dns_servers}"
  location            = "${azurerm_resource_group.devopsrg.location}"
  resource_group_name = "${azurerm_resource_group.devopsrg.name}"
}

resource "azurerm_virtual_network" "vnet2" {
  name                = "vnet_test"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = "${var.dns_servers}"
  location            = "${azurerm_resource_group.devopsrg.location}"
  resource_group_name = "${azurerm_resource_group.devopsrg.name}"
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.subnet}"
  resource_group_name  = "${azurerm_resource_group.devopsrg.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix       = "${var.address_subnet}"
  // network_security_group_id = "${azurerm_network_security_group.aks-nsg.id}"
  // service_endpoints    = ["Microsoft.Sql"]
}


// resource "azurerm_resource_group" "corerg" {
//   name     = "rg-gw-core-01"
//   location = "UK South"
// }




