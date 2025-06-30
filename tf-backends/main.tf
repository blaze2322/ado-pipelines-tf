provider "azurerm" {
  features {}

  subscription_id = "c806e47b-038e-47a1-b924-f8d870857051"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}
