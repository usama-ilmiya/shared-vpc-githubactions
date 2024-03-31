provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc1" {
  source        = "./network"
  vpc1_name     = "vpc1-ilmiya"
}

module "vpc2" {
  source        = "./network"
  vpc2_name     = "vpc2-ilmiya"
}
