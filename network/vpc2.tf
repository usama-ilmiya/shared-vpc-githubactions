variable "vpc2_name" {
  default = "my_vpc_2"
}

resource "google_compute_network" "vpc2_network" {
  name                    = var.vpc2_name
  auto_create_subnetworks = false
}

# Define other resources like subnets, firewall rules, etc., as needed.
