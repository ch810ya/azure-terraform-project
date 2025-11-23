variable "location" {
  description = "Azure region for the landing zone resources"
  type        = string
  default     = "australiaeast"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "chai-test"
}
