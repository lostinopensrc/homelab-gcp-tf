output "network"{
  description = "The created Network"
  value = module.vpc
}

output "network_name"{
  description = "Name of the vpc network"
  value = [for network in module.vpc.network: network.name]
}


output "bucket" {
  description = "The created storage bucket"
  value       = module.gcs.bucket
}

output "name" {
  description = "Bucket name."
  value       = module.gcs.name
}

