resource "google_project_service" "compute_api" {
  project = "anodiam-expt-prj-dev-001"
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }
}