output "app_service_name" {
  description = "The name of the Azure App Service."
  value       = azurerm_app_service.this.name
}

output "app_service_default_hostname" {
  description = "The default hostname of the Azure App Service."
  value       = local.app_service_default_hostname
}
