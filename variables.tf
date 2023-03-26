variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

variable "network_name" {
  description = "The name of the network being created"
  type        = list(string)
}

variable "buckets" {
  type        = list(map(string))
  description = "The list of buckets being created"
}