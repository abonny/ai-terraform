# Azure Function App Module

This module creates an Azure Function App, including the required resource group, storage account, and app service plan.

## Usage

```hcl
module "function_app" {
  source              = "./azure-function-app"
  resource_group_name = "my-rg"
  location            = "East US"
  function_app_name   = "my-func-app"
}
```

## Inputs
- `resource_group_name`: Name of the resource group (string, required)
- `location`: Azure region (string, optional, default: "West US")
- `function_app_name`: Name of the Function App (string, required)

## Outputs
- `function_app_name`: The name of the Azure Function App
- `function_app_default_hostname`: The default hostname of the Azure Function App
