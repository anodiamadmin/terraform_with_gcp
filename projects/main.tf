resource "google_project" "trfm_gcp_project" {
  name       = "${var.project_name}"
  project_id = "${var.project_name}"
  folder_id  = "folders/${var.subfolder_id}"
}