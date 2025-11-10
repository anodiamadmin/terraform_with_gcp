resource "google_project" "trfm_gcp_project" {
  name       = "${var.project_name}"
  project_id = "${var.project_name}"
  folder_id  = "folders/${var.subfolder_id}"
  billing_account = "018E6D-3D4424-A03523"
  lifecycle {
    ignore_changes = [billing_account]
  }
}