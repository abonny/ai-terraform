resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.10.0.0/16"]
  location            = "West US"
  resource_group_name = "rg-terraform-ai"
}

resource "azurerm_subnet" "private_endpoints" {
  name                 = "private-endpoints"
  resource_group_name  = "rg-terraform-ai"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.0/24"]
  enforce_private_link_endpoint_network_policies = true
}

module "function_app" {
  source                = "../azure-function-app"
  resource_group_name   = "rg-terraform-ai"
  location              = "West US"
  function_app_name     = "my-func-app"
  private_endpoint_enabled = true
  subnet_id                = azurerm_subnet.private_endpoints.id
}
