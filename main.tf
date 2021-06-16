terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
      version = ">= 2.10.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {


  subscription = var.environment != "dev" ? "PP" : "PD"
  region       = var.region != "ne" ? "West Europe" : "North Europe"


}


resource "azurerm_resource_group" "rg" {
  name     = "RG-${local.subscription}-${upper(var.region)}-${upper(var.project)}-${upper(var.environment)}-01"
  location = local.region
  tags = {
    ENV       = var.environment
    OWNER     = var.owner
    CUST-CODE = var.custCode
    #RESOURCE-GROUP = azurerm_resource_group.rg.Name
    ENTITY-CODE = var.entityCode
    CONTACT     = var.contact
    CREATED-BY  = var.createdBy
    DEPL-DATE   = timestamp()
    RFC         = var.rfc

  }
}
