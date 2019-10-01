// subscription_id = "ca074c37-010e-47b0-8c98-ae7ce2f1964f" ##Prod##
// subscription_id = "da4f1b21-76ac-46d4-a40a-40529fbeb1ed"
# subscription_id_core = "10d15b90-a53a-4201-8087-61d52e0dc85b" ##Coresub##


devopsrg = "HOR-DEV-NETWORK-RG" #RG name#
aksrg = "HOR-DEVOPS-AKS-RG"
location = "eastus2"
vnet = "LGA-IT-HORIZON-DEV-VNET-EAST2-10.253.0.0-16" #vnet#
// subnet_appgw = ""
subnet = "LGA-IT-HORIZON-DEV-AKSSUBNET-EAST2" 
dns_servers = ["8.8.8.8","8.8.4.4"]
address_space = ["10.253.0.0/16"]
// address_subnet_appgw = ""
address_subnet = "10.253.8.0/21"


aks = "LGA-DEVOPS-AKS" #aks name#
aksdns = "lga-dvo-aks" 
aksvmname = "kslildlvak1" 
vmsize = "Standard_D8_v3" 
tag = "devops"
aksnodecount = "2"


aks_nsg_name = "aks-nsg"

devops_storage_name = "lgadevops"
jenkins_share_name = "jenkins"
sonar_share_name = "sonar"


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

