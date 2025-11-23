resource "azurerm_resource_group" "mgmt" {
  name     = "${var.prefix}-mgmt-rg"
  location = var.location

  tags = {
    environment = "platform"
    owner       = "chai"
    landingzone = "true"
  }
}
