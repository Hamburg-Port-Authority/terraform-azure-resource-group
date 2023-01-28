resource "azurerm_resource_group" "main" {

  name     = var.name
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "resource_group_level" {
  name       = var.lock_name
  scope      = azurerm_resource_group.main.id
  lock_level = var.lock_level
  notes      = var.notes

  depends_on = [
    azurerm_resource_group.main
  ]
}