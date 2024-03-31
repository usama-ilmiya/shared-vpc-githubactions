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
