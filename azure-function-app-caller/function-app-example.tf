module "function_app" {
  source              = "../azure-function-app"
  resource_group_name = "rg-terraform-ai"
  location            = "West US"
  function_app_name   = "mycompanyfuncapp"
}
