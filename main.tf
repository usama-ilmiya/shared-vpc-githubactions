provider "google" {
  project = "your_project_id"
  region  = "us-central1"
}

module "vpc1" {
  source    = "./network"
  vpc1_name = "vpc1-ilmiya"
}

module "vpc2" {
  source    = "./network"
  vpc2_name = "vpc2-ilmiya"
}
