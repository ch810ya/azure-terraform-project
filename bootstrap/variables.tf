variable "location" {
  description = "Azure region for tfstate resources"
  type        = string
  default     = "australiaeast"
}

variable "tfstate_rg_name" {
  description = "Resource group name for Terraform state"
  type        = string
  default     = "rg-tfstate"
}

variable "tfstate_storage_account_name" {
  description = "Storage account name for Terraform state (must be globally unique, lowercase, 3-24 chars)"
  type        = string
  default     = "tfstatechai001"
}

variable "tfstate_container_name" {
  description = "Blob container name for Terraform state"
  type        = string
  default     = "tfstate"
}
