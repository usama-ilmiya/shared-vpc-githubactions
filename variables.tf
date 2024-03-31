variable "credentials_file" {
  description = "Path to the Google Cloud service account key file"
}

variable "project_id" {
  description = "Google Cloud project ID"
}

variable "region" {
  description = "Google Cloud region"
}

variable "network_name" {
  description = "Name of the VPC network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
}
