variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service."
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be created."
  type        = string
  default     = "West US"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "app_service_sku" {
  description = "The SKU for the App Service Plan."
  type        = string
  default     = "B1"
}
