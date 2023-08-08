variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "loation of the resource group"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "virtual_network_address" {
  type    = list(any)
}

variable "subnet_name" {
  type    = string
}

variable "subnet_address" {
  type    = list
}

variable "public_ip_name" {
  type    = string
}

variable "network_security_group_name" {
  type    = string
}

variable "network_interface_name" {
  type    = string
}

variable "virtual_machine_name" {
  type    = string
}

variable "virtual_machine_size" {
  type    = string
}

variable "adminUser" {
  type    = string
}

variable "adminPassword" {
  type    = string
}