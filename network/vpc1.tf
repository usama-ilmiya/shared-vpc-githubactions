#variable "vpc1_name" {
#  default = "vpc1-ilmiya"
#}

#resource "google_compute_network" "vpc1_network" {
#  name                    = var.vpc1_name
#  auto_create_subnetworks = false
#}


# /////////////////////////////////////////   OR


#variable "vpc1_name" {
#  default = "vpc1-ilmiya"
#}

#resource "google_compute_network" "vpc1_network" {
#  name                    = var.vpc1_name
#  auto_create_subnetworks = false

#  lifecycle {
#    ignore_changes = [name]
#  }
#}


# ///////////////////////////////////////  OR 

variable "vpc1_name" {
  default = "vpc1-ilmiya"
}

data "google_compute_network" "existing_vpc1" {
  name = var.vpc1_name
}

resource "google_compute_network" "vpc1_network" {
  count                   = data.google_compute_network.existing_vpc1.id != "" ? 0 : 1
  name                    = var.vpc1_name
  auto_create_subnetworks = false

  lifecycle {
    ignore_changes = [name]
  }
}
