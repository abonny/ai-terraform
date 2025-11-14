output "resource_group_name" {
  value = module.azure_sql_human_fixed.resource_group_name
}

output "sql_server_name" {
  value = module.azure_sql_human_fixed.sql_server_name
}

output "admin_password" {
  sensitive = true
  value     = module.azure_sql_human_fixed.admin_password
}
