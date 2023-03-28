output "network"{
  description = "The created Network"
  value = module.vpc
}

output "network_name"{
  description = "Name of the vpc network"
  value = [for network in module.vpc.network: network.name]
}

output "subnets" {
  description = "The created subnets"
  value       = module.subnets.subnets
}
output "buckets" {
  description = "The created storage buckets"
  value       = module.gcs.bucket
}