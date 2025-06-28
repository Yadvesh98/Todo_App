resource "azurerm_resource_group" "rgs" {

    for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

output "rg_ids" {
  value = azurerm_resource_group.rgs
}