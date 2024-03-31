variable "vpc1_name" {
  default = "vpc1-ilmiya"
}

resource "google_compute_network" "vpc1_network" {
  name                    = var.vpc1_name
  auto_create_subnetworks = false
}
