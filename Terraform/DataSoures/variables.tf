variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "terraform-rg"
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

variable "subnet_name" {
  type    = string
  default = "default"
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

# variable "adminPassword" {
#   type    = string
#   default = "Azuredevops@12345"
# }