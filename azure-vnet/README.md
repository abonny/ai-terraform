# Azure VNET Module

This module creates an Azure Virtual Network and subnets.

## Usage

```hcl
module "vnet" {
  source              = "./azure-vnet"
  resource_group_name = "my-rg"
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
```

## Inputs
- `resource_group_name`: Name of the resource group (string, required)
- `location`: Azure region (string, optional, default: "West US")
- `vnet_name`: Name of the Virtual Network (string, required)
- `address_space`: Address space for the VNET (list of strings, optional, default: ["10.0.0.0/16"])
- `subnets`: List of subnet objects (optional, default: one subnet)

## Outputs
- `vnet_name`: The name of the Azure Virtual Network
- `vnet_id`: The ID of the Azure Virtual Network
- `subnet_ids`: The IDs of the subnets created in the VNET
