terraform {
  backend "azurerm" {
    resource_group_name  = "HOR-DEV-NETWORK-RG"
    storage_account_name = "horizonterraform"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "sgt5czGWzIlUknPrtmUgplEHldvqqZIud2aItGl8Vb5FA9byZGuc/GCHtlilhWJokVR+QDflq4NRaPAr2Wh+Gg=="
  }
}




