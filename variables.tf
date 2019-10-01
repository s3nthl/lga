variable "devopsrg" {}
variable "vnet" {}
variable "aksrg" {}
variable "location" {}
// variable "subnet_appgw" {}
variable "subnet" {}
variable "dns_servers" {type = "list"}
variable "address_space" {type = "list"}
// variable "address_subnet_appgw" {}
variable "address_subnet" {}

variable "aks" {}
variable "aksdns" {}
variable "aksnodecount" {}
variable "aksvmname" {}
// variable "subnet_dns" {}
variable "vmsize" {}
variable "tag" {}
variable "aks_nsg_name" {}

variable "devops_storage_name" {}
variable "jenkins_share_name" {}
variable "sonar_share_name" {}



// variable "agwname" {}
// variable "apihostname" {}
// variable "uihostname" {}
// variable "apgwpipname" {}

// variable "sqlservername" {}
// variable "sqluser" {}
// variable "sqlpassword" {}
// variable "sqldbnames" {type = "list"}



// variable "appstoragename" {}
// variable "pgdbname" {}
// variable "pgdbpassword" {}
// variable "pgdatabase" {}
// variable "pgdatabase1" {}
// variable "vmnicname" {}
// variable "ipconfig" {}
// variable "vmname" {}
// variable "osdisk" {}
variable "subscription_id" {}
# variable "subscription_id_core" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
// variable "vmsizesmall" {}
// variable "vmpassword" {}
// variable "vmpvtip" {}
// variable "vmnsg" {}
// variable "acrname" {}
// variable "acrstorage" {}
# variable "corevnet" {}
# variable "corerg" {}
# // variable "coresubnet" {}
# variable "core_address_space" {type = "list"}
# variable "core_dns_servers" {type = "list"}