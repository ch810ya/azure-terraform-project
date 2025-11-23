variable "location" {
  description = "Azure region for dev environment"
  type        = string
  default     = "australiaeast"
}

variable "prefix" {
  description = "Prefix for dev resources"
  type        = string
  default     = "chailand-dev"
}
