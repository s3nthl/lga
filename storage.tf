resource "azurerm_storage_account" "azdevopsstorage" {
  name                     = "${var.devops_storage_name}"
  resource_group_name      = "${azurerm_resource_group.devopsrg.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "devops"
  }
}

resource "azurerm_storage_share" "azjenkinsshare" {
  name                 = "${var.jenkins_share_name}"
  storage_account_name = "${azurerm_storage_account.devopsstorage.name}"
  quota                = 50
}

resource "azurerm_storage_share" "azsonarshare" {
  name                 = "${var.sonar_share_name}"
  storage_account_name = "${azurerm_storage_account.devopsstorage.name}"
  quota                = 50
}