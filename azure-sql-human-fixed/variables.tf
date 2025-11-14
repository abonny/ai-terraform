variable "resource_group_location" {
  type        = string
  description = "Location for all resources."
  default     = "westus"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
  default     = "rg"
}

variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "SampleDB"
}

variable "admin_username" {
  type        = string
  description = "The administrator username of the SQL logical server."
  default     = "azureadmin"
}

variable "admin_password" {
  type        = string
  description = "The administrator password of the SQL logical server."
  sensitive   = true
  default     = null
}

variable "subnet_id" {
  description = "The ID of the subnet for the private endpoint."
  type        = string
  default     = null
}

variable "private_endpoint_enabled" {
  description = "Enable private endpoint for the SQL server."
  type        = bool
  default     = false
}