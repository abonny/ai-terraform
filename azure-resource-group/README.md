# Azure Resource Group Module

This module creates an Azure Resource Group.

## Usage

```hcl
module "resource_group" {
  source              = "./azure-resource-group"
  resource_group_name = "my-rg"
  location            = "West US"
}
```

## Inputs
- `resource_group_name`: Name of the Azure resource group (string, required)
- `location`: Azure location for the resource group (string, optional, default: "West US")

## Outputs
- `resource_group_name`: The name of the Azure resource group
- `resource_group_location`: The location of the Azure resource group
