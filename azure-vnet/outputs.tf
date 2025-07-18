output "vnet_name" {
  description = "The name of the Azure Virtual Network."
  value       = azurerm_virtual_network.this.name
}

output "vnet_id" {
  description = "The ID of the Azure Virtual Network."
  value       = azurerm_virtual_network.this.id
}

output "subnet_ids" {
  description = "The IDs of the subnets created in the VNET."
  value       = [for s in azurerm_subnet.this : s.id]
}
