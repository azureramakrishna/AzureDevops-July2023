variable "clientid" {
  type = string
}

variable "clientSecret" {
  type = string
}

variable "tenantId" {
  type    = string
  default = "459865f1-a8aa-450a-baec-8b47a9e5c904"
}

variable "subscriptionId" {
  type    = string
  default = "6e4924ab-b00c-468f-ae01-e5d33e8786f8"
}

variable "resource_group_name" {
  type    = string
  default = "virtual_machine_group"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type    = string
  default = "terraform2023sa"
}

variable "count_value" {
  type    = number
  default = 4
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
  default = "Standard_Ds1_v2"
}

variable "adminUser" {
  type    = string
  default = "azureuser"
}

variable "adminPassword" {
  type    = string
  default = "Azuredevops@12345"
}