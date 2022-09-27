variable "location" {
  type = string
  description = "The location where the resource needs to be created"
}

variable "project" {
  type = string
  description = "Name of the project"
}

variable "lob" {
  type = string
  description = "Name of Line of Bussiness"  
}

variable "zone" {
  type = string
  description = "UAT,Platform,Production,Pre-Production"  
}

variable "resource_group_name" {
  type = string
  description = "in which resource group the vnet needs to be created"
}

variable "address_space" {
  description = "CIDR size to use for Vnet"
}

variable "dns_servers" {
  type = list(string)
  description = "List of DNS servers"
  default = ["10.0.0.4", "10.0.0.5"]
}

variable "law_id" {
  description = "Log analytics workspace id"
}

variable "diag_retention" {
  default = 90
  description = "No. of days the logs to be retained"
}