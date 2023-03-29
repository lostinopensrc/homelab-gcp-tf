variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "secondary_ranges" {
  type = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "The secondary subnets"
}