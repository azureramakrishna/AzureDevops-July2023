variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "terraform-resource-group"
}

variable "location" {
  type        = string
  description = "loation of the resource group"
  default     = "westeurope"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
  default     = "Terraformsa20230801"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "terraform-vnet"
}

variable "virtual_network_address" {
  type    = list(any)
  default = ["10.0.0.0/24"]
}

variable "subnet_name" {
  type    = string
  default = "terraform-snet"
}

variable "subnet_address" {
  type    = list(any)
  default = ["10.0.0.0/24"]
}

variable "public_ip_name" {
  type    = string
  default = "terraform-pubip"
}

variable "network_security_group_name" {
  type    = string
  default = "terraform-nsg"
}

variable "network_interface_name" {
  type    = string
  default = "terraform-nic"
}

variable "virtual_machine_name" {
  type    = string
  default = "terraform-vm"
}

variable "virtual_machine_size" {
  type    = string
  default = "Standard_B2s"
}

variable "adminUser" {
  type    = string
  default = "azureuser"
}

variable "adminPassword" {
  type    = string
  default = "Azuredevops@12345"
}