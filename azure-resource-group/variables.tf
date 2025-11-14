variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "The Azure location for the resource group."
  type        = string
  default     = "West US"
}
