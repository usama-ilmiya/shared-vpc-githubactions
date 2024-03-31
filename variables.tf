variable "project_id" {
  description = "The ID of the GCP project."
  default     = "gmzdev"
}

variable "region" {
  description = "The region to deploy resources in."
  default     = "us-central1"
}

variable "vpc1_name" {
  description = "Name of VPC1."
  default     = "vpc1-ilmiya"
}

variable "vpc2_name" {
  description = "Name of VPC2."
  default     = "vpc2-ilmiya"
}
