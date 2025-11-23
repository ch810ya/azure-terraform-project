module "rg_dev" {
  source   = "../../modules/resource_group"
  name     = "${var.prefix}-rg"
  location = var.location
  tags = {
    environment = "dev"
    owner       = "chai"
  }
}

module "vnet_dev" {
  source              = "../../modules/network"
  name                = "${var.prefix}-vnet"
  location            = var.location
  resource_group_name = module.rg_dev.name
  address_space       = ["10.10.0.0/16"] # dev VNet CIDR

  subnets = {
    "${var.prefix}-subnet-app-01" = {
      address_prefix = "10.10.1.0/24"
    }
    "${var.prefix}-subnet-db-01" = {
      address_prefix = "10.10.2.0/24"
    }
  }

  tags = {
    environment = "dev"
    owner       = "chai"
  }
}
