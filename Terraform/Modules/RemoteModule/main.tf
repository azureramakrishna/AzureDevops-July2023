# Azure terraform provider version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
}

# Azure terraform provider
provider "azurerm" {
  features {}

  client_id       = var.clientid
  client_secret   = var.clientSecret
  tenant_id       = var.tenantId
  subscription_id = var.subscriptionId
}

# Terraform backend state
terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg10032000825eeb72"
    container_name       = "tfstate"
    key                  = "remotemodule.terraform.tfstate"
  }
}

module "remote_module" {
  source = "git::https://github.com/azureramakrishna/AzureDevops-July2023.git"

  resource_group_name  = "remote-module-group"
  location             = "uksouth"
  storage_account_name = "remotemodulesa2023"
  count_value          = 9
} 