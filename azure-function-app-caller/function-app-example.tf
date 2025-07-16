module "function_app" {
  source              = "../azure-function-app"
  resource_group_name = "my-rg"
  location            = "East US"
  function_app_name   = "my-func-app"
}
