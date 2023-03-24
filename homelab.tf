module "vpc" {
  source = "./modules/vpc"
  network_name = var.network_name
  project_id = var.project_id
}
module "gcs" {
  source = "./modules/gcs"
  name                        = var.name
  project_id                  = var.project_id
  location                    = var.location
  force_destroy               = var.force_destroy
}