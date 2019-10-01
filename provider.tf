# Configure the Microsoft Azure Provider
provider "azurerm" {
  #version = "~> 1.20"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

provider "kubernetes" {}

# # Configure the Microsoft Azure Provider
# provider "azurerm" {
#   #version = "~> 1.20"
#   alias = "core"
#   subscription_id = "${var.subscription_id_core}"
#   client_id       = "${var.client_id}"
#   client_secret   = "${var.client_secret}"
#   tenant_id       = "${var.tenant_id}"
# }



