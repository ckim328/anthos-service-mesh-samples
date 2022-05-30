terraform {
  required_version = ">= 0.15.5, < 1.1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.68.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.68.0"
    }
  }
}
provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}

provider "google-beta" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}