resource "random_pet" "app_service_name" {
  prefix = "my-app-service"
}

module "app_service" {
  source                = "../azure-app-service"
  resource_group_name   = "rg-terraform-ai"
  location              = "West US"
  app_service_plan_name = "my-app-plan"
  app_service_name      = random_pet.app_service_name.id
  app_service_sku       = "B1"
}
