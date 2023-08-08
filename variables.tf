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
  default = "terraform-group"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "storage_account_name" {
  type    = string
  default = "saanvikit2023"
}

variable "count_value" {
  type    = number
  default = 9
}