# module "resource-group" {
#   source    = "mniranjanr7/resource-group/azurerm"
#   version   = "1.0.2"
#   rg-name   = var.rg-name
#   location  = var.location
#   snowqueue = var.Snow-Queue-Name
#   project   = var.project

# }

module "resource-group" {
  source    = "mniranjanr7/resource-group/azurerm"
  version   = "1.0.2"
  for_each  = var.rg-deploy
  rg-name   = each.value.rg-name
  location  = each.value.location
  snowqueue = each.value.Snow-Queue-Name
  project   = each.value.project
}