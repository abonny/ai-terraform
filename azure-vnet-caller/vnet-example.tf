module "vnet" {
  source              = "../azure-vnet"
  resource_group_name = "rg-terraform-ai"
  location            = "West US"
  vnet_name           = "my-vnet"
  address_space       = ["10.1.0.0/16"]
  subnets = [
    {
      name           = "subnet1"
      address_prefix = "10.1.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.1.2.0/24"
    }
  ]
}
