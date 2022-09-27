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
############################################################
#      Keyvault specific variables
############################################################

variable "tenant_id" {
  description = "Tenant ID of the Azure"
}

variable "resource_group_name" {
  description = "Name of the resource group where the Keyvault needs to be created"
}

variable "enabled_for_disk_encryption" {
  type = bool
  default = true
}

variable "enabled_for_deployment" {
  type = bool
  default = true
}

variable "enabled_for_template_deployment" {
  type = bool
  default = true
}

variable "sku" {
  default = "standard"
}