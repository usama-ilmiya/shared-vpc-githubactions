provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc1" {
  source        = "./network"
  vpc1_name     = var.vpc1_name
}

module "vpc2" {
  source        = "./network"
  vpc2_name     = var.vpc2_name
}
