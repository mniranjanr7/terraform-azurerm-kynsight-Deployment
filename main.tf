module "resource-group" {
  source    = "mniranjanr7/resource-group/azurerm"
  version   = "1.0.2"
  rg-name   = var.rg-name
  location  = var.location
  snowqueue = var.Snow-Queue-Name
  project   = var.project

}
