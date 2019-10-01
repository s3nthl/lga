


resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.aks}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.aksrg.name}"
  dns_prefix          = "${var.aksdns}"
  kubernetes_version  = "1.14.6"

  linux_profile {
    admin_username = "mstr_usr"

    ssh_key {
      key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9AG7Jmk+FxirvivlOKRYYYr4QuE2His5+05S7RTrpB4wXKxsGHptdLoPgM5B+nTqf5iVgG1230v6Uxnhw1RWXLNqF0YcIbL5mzQrArI4KS2ah4MWkomtV5hGSuobOVsK+y7Gtq3XTLvJQu0mDrhWpf5YIlhS8o3VqsbJDvH+QDHgtQ+brBgZPDLjU7ZVFYJt0PFq335pKLUR/hy91y5Esaw/myWt2YYV4UaBwIA/DengKP6bhz7t5ZrvAJ5O/xT7Zdh92xi1cDIsYKbIMdAbsW098Xu+YZ1F6SqhjVO8oCkHi9PAmigXYAWffUZ05o3bRRFeMWqNH4YlkQWiXmqIJ sam_arora@cc-a12f8c07-6b5545f7f7-5hztw"
    }
  }

  agent_pool_profile {
    name            = "${var.aksvmname}"
    count           = "${var.aksnodecount}"              # increase for production environment
    vm_size         = "${var.vmsize}"
    os_type         = "Linux"
    os_disk_size_gb = 30

    # Required for advanced networking
    vnet_subnet_id = "${azurerm_subnet.subnet.id}"
  }

  service_principal {
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
  }

  #tags {
  #  Environment = "${var.tag}"
  #}

  #addon_profile {
  #http_application_routing {
  #  enabled = true
  #}
  /*oms_agent {
      enabled = true
      log_analytics_workspace_id = "/subscrip"
    } */
  #}

  network_profile {
    network_plugin = "azure"
  }
}

// output "client_certificate" {
//   value = "${azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate}"
// }

// output "kube_config" {
//   value = "${azurerm_kubernetes_cluster.aks.kube_config_raw}"
// }