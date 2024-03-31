variable "vpc2_name" {
  default = "vpc-2"
}

resource "google_compute_network" "vpc2_network" {
  name                    = var.vpc2_name
  auto_create_subnetworks = false
}
