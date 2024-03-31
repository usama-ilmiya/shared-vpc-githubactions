provider "google" {
  project = var.project_id
  region  = var.region
}

data "google_compute_network" "existing_vpc1" {
  name = var.vpc1_name
}

data "google_compute_network" "existing_vpc2" {
  name = var.vpc2_name
}

module "vpc1" {
  source     = "./network"
  vpc_name   = var.vpc1_name
  create_vpc = length(data.google_compute_network.existing_vpc1) == 0 ? true : false
}

module "vpc2" {
  source     = "./network"
  vpc_name   = var.vpc2_name
  create_vpc = length(data.google_compute_network.existing_vpc2) == 0 ? true : false
}
