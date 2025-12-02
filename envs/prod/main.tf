resource "google_cloud_run_service" "cloud-run" {
  name     = "cloud-run-prod"
  location = "us-central1"
  project  = "rich-torus-428117-m8"
  template {
    spec {
      containers {
        image = "gcr.io/cloud-run/hello"
      }
    }
  }
  traffic {
    percent         = 100
    latest_revision = true
  }
}