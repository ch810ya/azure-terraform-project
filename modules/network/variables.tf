variable "name" {
description = "Name of the virtual network"
type = string
}

variable "location" {
description = "Azure region for the VNet"
type = string
}

variable "resource_group_name" {
description = "Resource group where the VNet will be created"
type = string
}

variable "address_space" {
description = "VNet address space"
type = list(string)
}

variable "subnets" {
description = "Map of subnets to create inside the VNet"
type = map(object({
address_prefix = string
}))
}

variable "tags" {
description = "Tags for the VNet"
type = map(string)
default = {}
}