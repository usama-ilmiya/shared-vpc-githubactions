output "network_name" {
  value = google_compute_network.shared_network.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "subnet_cidr" {
  value = google_compute_subnetwork.subnet.ip_cidr_range
}

output "subnet_region" {
  value = google_compute_subnetwork.subnet.region
}

output "firewall_rule_name" {
  value = google_compute_firewall.allow-icmp-ssh-rdp.name
}
