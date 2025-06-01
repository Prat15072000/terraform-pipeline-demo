variable "resource_group_name" {
  default = "rg-iac-devops"
  type = string
}

variable "vnet" {
  default = "march-vnet001"
  type = string
}

variable "tags" {
    default = {
    created = "IaC"
    createdFor = "networking"
    createdBy = "pratyay"
    }
}