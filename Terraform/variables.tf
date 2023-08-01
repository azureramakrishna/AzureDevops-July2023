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