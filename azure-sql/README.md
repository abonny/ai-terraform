# Azure SQL Module

This module creates an Azure SQL Server and a SQL Database.

## Usage

```hcl
module "azure_sql" {
  source              = "./azure-sql"
  resource_group_name = "my-rg"
  location            = "West US"
  sql_server_name     = "my-sql-server"
  sql_admin_login     = "sqladmin"
  sql_admin_password  = "P@ssw0rd123!"
  sql_database_name   = "mydb"
}
```

## Inputs
- `resource_group_name`: Name of the resource group (string, required)
- `location`: Azure region (string, optional, default: "West US")
- `sql_server_name`: Name of the Azure SQL Server (string, required)
- `sql_admin_login`: Administrator login name (string, required)
- `sql_admin_password`: Administrator password (string, required, sensitive)
- `sql_database_name`: Name of the Azure SQL Database (string, required)

## Outputs
- `sql_server_name`: The name of the Azure SQL Server
- `sql_server_fqdn`: The fully qualified domain name of the Azure SQL Server
- `sql_database_name`: The name of the Azure SQL Database
