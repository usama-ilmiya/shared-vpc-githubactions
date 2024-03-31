variable "project_id" {
  description = "The ID of the GCP project"
  default = "gmzdev"
}

variable "region" {
  description = "The GCP region"
  default = "us-central1"
}

variable "shared_vpc_name" {
  description = "Name of the shared VPC"
  default = "ilmiya_shared_vpc_"
}
