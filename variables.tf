variable "project_id" {
  description = "The ID of the GCP project"
  default = "gmzdev"
}

variable "region" {
  description = "The region in which the resources will be created"
  default     = "us-central1"
}

variable "network_name" {
  description = "The name of the VPC network"
  default     = "shared-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.10.0.0/24"
}

variable "subnet_name" {
  description = "The name of the subnet"
  default     = "subnet-us-central1"
}

variable "subnet_region" {
  description = "The region in which the subnet will be created"
  default     = "us-central1"
}

variable "subnet_description" {
  description = "Description for the subnet"
  default     = "Subnet in us-central1 region"
}

variable "firewall_allow_cidr" {
  description = "CIDR block to allow traffic from"
  default     = "0.0.0.0/0"
}
