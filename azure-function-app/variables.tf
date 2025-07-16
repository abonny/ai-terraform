variable "resource_group_name" {
  description = "The name of the resource group in which to create the Function App."
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be created."
  type        = string
  default     = "West US"
}

variable "function_app_name" {
  description = "The name of the Function App."
  type        = string
}
