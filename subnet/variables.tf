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
    ddescription = "Name of Line of Bussiness"  
}

variable "zone" {
    type = string
    description = "value"  
}
variable "resource_group_name" {
  description = ""
}

variable "vnet_name" {
  description = ""
}

variable "vnet_cidr" {
  description = "CIDR of the vnet the subnet will be part of"
}

variable "subnet_cidr_size" {
  description = "size of the subnet to take from the vnet"
}

variable "subnet_cidr_netnum" {
  description = "Position of the subnet the within the vnet"
}

variable "service_endpoints" {
  description = "service endpoints the subnet will be associated"
  default = ["Microsoft.Sql", "Microsoft.Storage", "Microsoft.Keyvault"]
}
variable "enforce_private_link_endpoint_network_policies" {
  type = bool
  default = false
}