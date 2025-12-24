resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = "Southeast Asia"
}


output "rg_name" {
  value = azurerm_resource_group.rg.name
}
