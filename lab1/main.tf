provider "azurerm" {
  version = "~> 1.33.1"
}

resource "azurerm_resource_group" "lgalab" {
  name     = "${var.rg}"
  location = "${var.loc}"
  tags     = "${var.tags}"
}

resource "random_string" "rnd" {
  length  = 8
  lower   = true
  number  = true
  upper   = false
  special = false
}

resource "azurerm_storage_account" "lgalabsa1" {
  name                     = "sa${var.tags["source"]}${random_string.rnd.result}"
  resource_group_name      = "${azurerm_resource_group.lgalab.name}"
  location                 = "${azurerm_resource_group.lgalab.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = "${azurerm_resource_group.lgalab.tags}"
}