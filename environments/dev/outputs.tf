output "rg_dev_name" {
  value = module.rg_dev.name
}

output "vnet_dev_name" {
  value = module.vnet_dev.vnet_name
}

output "dev_subnet_ids" {
  value = module.vnet_dev.subnet_ids
}
