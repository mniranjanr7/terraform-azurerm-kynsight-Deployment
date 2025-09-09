variable "rg-name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "rg-cdo-dev-kyncdm"
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
  default     = "East US"
}

variable "Snow-Queue-Name" {
  description = "The name of the Snow Queue"
  type        = string
  default     = "Data-Platform"
}

variable "project" {
  description = "The name of the project"
  type        = string
  default     = "KYNCDM"

}

variable "rg-deploy" {
  description = "Flag to deploy Resource Group"
  type = map(object({
    Snow-Queue-Name = string
    project         = string
    location        = string
    rg-name         = string

  }))
  default = {
    kyncdm = {
      Snow-Queue-Name = "Data-Platform"
      project         = "KYNCDM"
      location        = "East US"
      rg-name         = "rg-cdo-dev-kyncdm"
    }
    piqt = {
      Snow-Queue-Name = "Data-Platform"
      project         = "PIQT"
      location        = "East US 2"
      rg-name         = "rg-cdo-prod-piqt"
    }
    ukibi = {
      Snow-Queue-Name = "Data-Platform"
      project         = "ukibi"
      location        = "Central US"
      rg-name         = "rg-cdo-prod-ukibi"
    }
  }
}