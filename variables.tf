variable "rg-name" {
  description = "The name of the Resource Group"
  type        = string
  default = "rg-cdo-dev-kyncdm"
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