output "sql_server_name" {
  description = "The name of the Azure SQL Server."
  value       = azurerm_sql_server.this.name
}

output "sql_server_fqdn" {
  description = "The fully qualified domain name of the Azure SQL Server."
  value       = local.sql_server_fqdn
}

output "sql_database_name" {
  description = "The name of the Azure SQL Database."
  value       = azurerm_sql_database.this.name
}
