module "azure_sql_human_fixed" {
  source                      = "../azure-sql-human-fixed"
  resource_group_location     = "westus"
  resource_group_name_prefix  = "rg"
  resource_group_name         = "rg-second-kyle"
  sql_db_name                 = "SampleDB"
  admin_username              = "azureadmin"
  admin_password              = null # or provide your own
}
