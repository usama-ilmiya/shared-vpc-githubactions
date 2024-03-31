variable "vpc_name" {}

resource "google_compute_network" "vpc1_network" {
  count                  = var.create_vpc ? 1 : 0
  name                   = var.vpc_name
  auto_create_subnetworks = false

  lifecycle {
    ignore_changes = [name]
  }
}
