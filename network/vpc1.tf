variable "vpc1_name" {
  description = "Name for VPC 1"
}

resource "google_compute_network" "vpc1_network" {
  name                    = var.vpc1_name
  auto_create_subnetworks = false
}
