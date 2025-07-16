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

variable "operating_system" {
  description = "The O.S. you want to use for the Function App."
  type        = string
  default     = "linux"
}

variable "daily_memory_time_quota" {
  description = "The daily memory time quota for the Function App in GB-seconds."
  type        = number
  default     = 1536 // e.g., 1536 GB-seconds
}
