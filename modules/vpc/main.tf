/******************************************
	VPC configuration
 *****************************************/
resource "google_compute_network" "network" {
  count                       = length(var.network_name)
  name                        = var.network_name[count.index]
  project                     = var.project_id
  auto_create_subnetworks     = "false"
}