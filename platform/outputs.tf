output "mgmt_resource_group_name" {
  value = azurerm_resource_group.mgmt.name
}

output "location" {
  value = var.location
}
