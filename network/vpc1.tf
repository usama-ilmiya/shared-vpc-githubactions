variable "vpc_name" {
  default = "my_vpc_1"
}

resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

# Define other resources like subnets, firewall rules, etc., as needed.
