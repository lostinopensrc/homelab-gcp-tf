variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

variable "network_name" {
  description = "The name of the network being created"
  type        = list(string)
}

variable "name" {
  description = "The name of the bucket."
  type        = string
}

variable "location" {
  description = "The location of the bucket."
  type        = string
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects. If false, Terraform will fail to delete buckets which contain objects."
  type        = bool
  default     = false
}