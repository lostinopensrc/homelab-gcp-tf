locals {
  subnets = {
    for x in var.subnets :
    "${x.subnet_region}/${x.subnet_name}" => x
  }
}


/******************************************
	Subnet configuration
 *****************************************/
resource "google_compute_subnetwork" "subnetwork" {
  for_each                   = local.subnets
  name                       = each.value.subnet_name
  ip_cidr_range              = each.value.subnet_ip
  region                     = each.value.subnet_region
  network                    = each.value.network_name_for_subnet
  project                    = var.project_id
  secondary_ip_range         = [
    for i in range(
      length(
        contains(
          keys(var.secondary_ranges),each.value.subnet_name)== true ? var.secondary_ranges[each.value.subnet_name] : []
          )):var.secondary_ranges[each.value.subnet_name][i]
  ]
  private_ip_google_access   = lookup(each.value, "subnet_private_access", "false")
  description                = lookup(each.value, "description", null)
}