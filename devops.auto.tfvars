// subscription_id = "ca074c37-010e-47b0-8c98-ae7ce2f1964f" ##Prod##
// subscription_id = "da4f1b21-76ac-46d4-a40a-40529fbeb1ed"
# subscription_id_core = "10d15b90-a53a-4201-8087-61d52e0dc85b" ##Coresub##


devopsrg = "AZ-DEV-NETWORK-RG" #RG name#
aksrg = "AZ-DEVOPS-AKS-RG"
location = "eastus2"
vnet = "AZ-IT-HORIZON-DEV-VNET-EAST2-10.253.0.0-16" #vnet#
// subnet_appgw = ""
subnet = "AZ-IT-HORIZON-DEV-AKSSUBNET-EAST2" 
dns_servers = ["8.8.8.8","8.8.4.4"]
address_space = ["10.253.0.0/16"]
// address_subnet_appgw = ""
address_subnet = "10.253.8.0/21"


aks = "AZ-DEVOPS-AKS" #aks name#
aksdns = "az-dvo-aks" 
aksvmname = "azkslildlvak1" 
vmsize = "Standard_D8_v3" 
tag = "azdevops"
aksnodecount = "2"


aks_nsg_name = "azaks-nsg"

devops_storage_name = "azlgadevops"
jenkins_share_name = "azjenkins"
sonar_share_name = "azsonar"


// agwname = ""
// apihostname = ""
// uihostname = ""
// apgwpipname = ""


// sqlservername = ""
// sqluser = ""
// sqlpassword = ""
// sqldbnames = [""]

// apimname = ""





//appstoragename = "ukslgilrpdstgapp01"


# corerg = "rg-gw-core-01" #RG name#
# corevnet = "gwcorevnet" #vnet#
# core_dns_servers = ["10.99.10.12", "10.99.11.12"]
# core_address_space = ["10.143.0.0/24"]

