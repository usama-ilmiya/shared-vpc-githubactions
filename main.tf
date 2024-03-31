provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc1" {
  source    = "./network"
  vpc1_name = "my_vpc_1"
}

module "vpc2" {
  source    = "./network"
  vpc2_name = "my_vpc_2"
}
