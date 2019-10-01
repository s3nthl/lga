terraform {
  backend "azurerm" {
    resource_group_name  = "AZ-DEV-NETWORK-RG"
    storage_account_name = "azhorizonterraform"
    container_name       = "azterraform"
    key                  = "terraform.tfstate"
    access_key           = "sgt5czGWzIlUknPrtmUgplEHldvqqZIud2aItGl8Vb5FA9byZGuc/GCHtlilhWJokVR+QDflq4NRaPAr2Wh+Gg=="
  }
}




