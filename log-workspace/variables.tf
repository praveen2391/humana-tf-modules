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
    description = "name of zone , UAT/Platform/Pre-Prod/Production"  
}

variable "resource_group_name" {
  description = "name of rg" 
}

variable "sku" {
  description = ""
}

variable "retention_in_days" {
  description = "No. of days the logs should be present in the Log workspace"
}