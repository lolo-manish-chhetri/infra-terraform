terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "rich-torus-428117-m8"
  region  = "us-central1"
}


resource "google_cloud_run_service" "cloud-run" {
  name     = "cloud-run-learning-prod"
  location = "us-central1"
  project  = "rich-torus-428117-m8"
  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
  traffic {
    percent         = 100
    latest_revision = true
  }
}