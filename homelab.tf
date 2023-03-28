module "vpc" {
  source = "./modules/vpc"
  network_name = var.network_name
  project_id = var.project_id
}
module "gcs" {
  source = "./modules/gcs"
  buckets                     = var.buckets
  project_id                  = var.project_id
}

module "subnets" {
  source                             = "./modules/subnets"
  project_id                         = var.project_id
  subnets                            = var.subnets
  depends_on = [
      module.vpc
  ] 
}