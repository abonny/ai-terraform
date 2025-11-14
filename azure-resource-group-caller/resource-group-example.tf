module "resource_group" {
  source              = "../azure-resource-group"
  resource_group_name = "my-rg"
  location            = "West US"
}
