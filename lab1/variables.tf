variable "rg" {
    default = "terraform-lab"
}

variable "loc" {
    default = "East US"
}

variable "tags" {
    type = "map"
    default = {
        environment = "sbox"
        source      = "india"
    }
}