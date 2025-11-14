# Azure SQL Human Fixed Module

This module creates an Azure Resource Group, an MSSQL Server, and a Database with randomized unique names and secure admin password generation.

## Usage

```hcl
module "azure_sql_human_fixed" {
  source                    = "./azure-sql-human-fixed"
  resource_group_location   = "westus"
  resource_group_name_prefix = "rg"
  sql_db_name               = "SampleDB"
  admin_username            = "azureadmin"
  admin_password            = null # or provide your own
}
```

## Inputs
- `resource_group_location`: Location for all resources (string, default: "westus")
- `resource_group_name_prefix`: Prefix for resource group name (string, default: "rg")
- `sql_db_name`: Name of the SQL Database (string, default: "SampleDB")
- `admin_username`: Administrator username (string, default: "azureadmin")
- `admin_password`: Administrator password (string, sensitive, default: null)

## Outputs
- `resource_group_name`: The name of the resource group
- `sql_server_name`: The name of the SQL server
- `admin_password`: The administrator password (sensitive)
- `private_endpoint_id`: The ID of the private endpoint for the SQL server (if enabled)
- `private_endpoint_ip_address`: The private IP address of the private endpoint (if enabled)
