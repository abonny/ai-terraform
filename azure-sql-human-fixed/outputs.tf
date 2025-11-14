output "resource_group_name" {
  value = var.resource_group_name
}

output "sql_server_name" {
  value = azurerm_mssql_server.server.name
}


output "admin_password" {
  sensitive = true
  value     = local.admin_password
}

output "private_endpoint_id" {
  description = "The ID of the private endpoint for the SQL server."
  value       = try(azurerm_private_endpoint.sql[0].id, null)
}

output "private_endpoint_ip_address" {
  description = "The private IP address of the private endpoint."
  value       = try(azurerm_private_endpoint.sql[0].private_service_connection[0].private_ip_address, null)
}