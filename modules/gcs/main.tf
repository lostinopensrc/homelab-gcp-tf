## formed a local object with key as bucketname/bucket-region
locals {
  buckets = {
    for x in var.buckets :
    "${x.name}/${x.location}" => x
  }
}
resource "google_storage_bucket" "bucket" {
  for_each                    = local.buckets
  project                     = var.project_id
  name                        = each.value.name 
  location                    = each.value.location
  force_destroy               = each.value.force_destroy
} 