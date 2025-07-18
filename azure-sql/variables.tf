variable "resource_group_name" {
  description = "The name of the resource group in which to create the SQL resources."
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be created."
  type        = string
  default     = "West US"
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server."
  type        = string
}

variable "sql_admin_login" {
  description = "The administrator login name for the SQL Server."
  type        = string
}

variable "sql_admin_password" {
  description = "The administrator password for the SQL Server."
  type        = string
  sensitive   = true
}

variable "sql_database_name" {
  description = "The name of the Azure SQL Database."
  type        = string
}
