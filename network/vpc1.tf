variable "vpc1_name" {
  default = "my_vpc_1"
}

resource "google_compute_network" "vpc1_network" {
  name                    = var.vpc1_name
  auto_create_subnetworks = false
}

# Define other resources like subnets, firewall rules, etc., as needed.

