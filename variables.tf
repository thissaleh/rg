/*
variable "resource_group_name" {
  description ="The name of the resource group"
   
}

variable "location" {
  description = "Location of Azure reource"
  default     = "West Europe"
   /*validation {  # TF 0.13
    condition     = can(index(["westeurope","westus"], var.location) >= 0)
    error_message = "The location must be westeurope or westus."
  
}*/


variable "project" {
  description = "Projec Name"
}

variable "region" {
  description = "Region Name"

}

variable "environment" {
  description = "Environment Name"
}

variable "owner" {
  description = "Owner Name"
}

variable "custCode" {
  description = "CUST-CODE"
}

variable "entityCode" {
  description = "ENTITY-CODE"
}

variable "contact" {
  description = "CONTACT Details"
}

variable "createdBy" {
  description = "CREATED-BY"
}

variable "rfc" {
  description = "RFC Number"
}




