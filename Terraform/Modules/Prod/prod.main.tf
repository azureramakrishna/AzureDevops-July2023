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
    key                  = "prod.terraform.tfstate"
  }
}

module "prod" {
  source = "../"

  resource_group_name         = "prod-resource-group"
  location                    = "eastus"
  storage_account_name        = "prodterraformsa2023"
  virtual_network_name        = "prod-vnet"
  virtual_network_address     = ["192.168.0.0/24"]
  subnet_name                 = "prod-snet"
  subnet_address              = ["192.168.0.0/25"]
  public_ip_name              = "prod-pubip"
  network_security_group_name = "prod-nsg"
  network_interface_name      = "prod-nic"
  virtual_machine_name        = "prod-vm"
  virtual_machine_size        = "Standard_Ds1_v2"
  adminUser                   = "azureuser"
  adminPassword               = "Azuredevops@12345"
}