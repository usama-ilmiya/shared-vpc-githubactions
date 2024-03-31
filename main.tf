provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a VPC network
resource "google_compute_network" "shared_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

# Create a subnet in the VPC
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.shared_network.self_link
  region        = var.subnet_region
  description   = var.subnet_description
}

# Create a firewall rule to allow traffic
resource "google_compute_firewall" "allow-icmp-ssh-rdp" {
  name    = "allow-icmp-ssh-rdp"
  network = google_compute_network.shared_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "3389"]
  }

  source_ranges = [var.firewall_allow_cidr]
}
