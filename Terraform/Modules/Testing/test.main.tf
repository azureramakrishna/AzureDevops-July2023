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
    key                  = "test.terraform.tfstate"
  }
}

module "test" {
  source = "../"

  resource_group_name         = "test-resource-group"
  location                    = "eastus"
  storage_account_name        = "testterraformsa2023"
  virtual_network_name        = "test-vnet"
  virtual_network_address     = ["172.16.0.0/24"]
  subnet_name                 = "test-snet"
  subnet_address              = ["172.16.0.0/25"]
  public_ip_name              = "test-pubip"
  network_security_group_name = "test-nsg"
  network_interface_name      = "test-nic"
  virtual_machine_name        = "test-vm"
  virtual_machine_size        = "Standard_Ds1_v2"
  adminUser                   = "azureuser"
  adminPassword               = "Azuredevops@12345"
}