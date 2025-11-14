# Azure App Service Module

This module creates an Azure App Service and an App Service Plan.

## Usage

```hcl
module "app_service" {
  source                = "./azure-app-service"
  resource_group_name   = "my-rg"
  location              = "West US"
  app_service_plan_name = "my-app-plan"
  app_service_name      = "my-app-service"
  app_service_sku       = "B1"
}
```

## Inputs
- `resource_group_name`: Name of the resource group (string, required)
- `location`: Azure region (string, optional, default: "West US")
- `app_service_plan_name`: Name of the App Service Plan (string, required)
- `app_service_name`: Name of the App Service (string, required)
- `app_service_sku`: SKU for the App Service Plan (string, optional, default: "B1")

## Outputs
- `app_service_name`: The name of the Azure App Service
- `app_service_default_hostname`: The default hostname of the Azure App Service
