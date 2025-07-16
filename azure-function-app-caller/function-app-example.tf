module "function_app" {
  source              = "../azure-function-app"
  resource_group_name = "rg-ai-terraform"
  location            = "West US"
  function_app_name   = "myfuncapp"
}
