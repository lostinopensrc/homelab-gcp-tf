variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}