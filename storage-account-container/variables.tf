variable "container_access_type" {
  default = "private"
}

variable "container_name" {
  description = "Storage account container name"
}

variable "storage_account_name" {
  description = "Name of storage account where the container needs to be created"
}