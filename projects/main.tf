resource "google_project" "anodiam-expt-prj-dev-in-subfolder" {
  name       = var.project_name
  project_id = var.project_name
  folder_id  = "folders/${var.folder_id}"
  billing_account = "018E6D-3D4424-A03523"
}