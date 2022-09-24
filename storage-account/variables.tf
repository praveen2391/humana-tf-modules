variable "location" {
  type = string
  description = "The location where the resource needs to be created"
}

variable "resource_group_name" {
  description = ""
}

variable "account_replication_type" {
  default = "GRS"
}

variable "account_tier" {
  default = "Standard"
}

variable "length" {
  default = "20"
}

variable "null_list" {
  type = list(any)
  default = [""]
}