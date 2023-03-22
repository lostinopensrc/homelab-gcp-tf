output "bucket" {
  description = "The created storage bucket"
  value       = module.gcs.bucket
}

output "name" {
  description = "Bucket name."
  value       = module.gcs.name
}

