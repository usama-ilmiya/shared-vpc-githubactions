provider "google" {
  project = "gmzdev"
  region  = "us-central1"
}

resource "google_compute_network" "shared_network" {
  name                    = "NETWORK_NAME"
  auto_create_subnetworks = false
}

# Define other resources like subnets, firewall rules, etc.
