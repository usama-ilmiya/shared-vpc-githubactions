#variable "vpc2_name" {
#  default = "vpc2-ilmiya"
#}

#resource "google_compute_network" "vpc2_network" {
#  name                    = var.vpc2_name
#  auto_create_subnetworks = false
#}


# ///////////////////////////////////////////////////////// OR

#variable "vpc2_name" {
#  default = "vpc2-ilmiya"
#}

#resource "google_compute_network" "vpc2_network" {
#  name                    = var.vpc2_name
#  auto_create_subnetworks = false

#  lifecycle {
#    ignore_changes = [name]
#  }
#}

#////////////////////////////////////////////////////////////     OR

variable "vpc2_name" {
  default = "vpc2-ilmiya"
}

resource "google_compute_network" "vpc2_network" {
  name                    = var.vpc2_name
  auto_create_subnetworks = false

  lifecycle {
    ignore_changes = [name]
  }
}

data "google_compute_network" "existing_vpc2" {
  depends_on = [google_compute_network.vpc2_network]
  count      = length(google_compute_network.vpc2_network[*].id) > 0 ? 1 : 0
  name       = var.vpc2_name
}
