resource "azurerm_storage_account" "stg" {

    for_each = var.stg
  name                     = each.value.name
  resource_group_name      = "rg-niteshfbd2"
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  tags = {
    environment = "dev"
  }
}