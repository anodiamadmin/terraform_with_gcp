resource "google_folder" "experiments" {
  display_name = "${var.folder_name}"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "terraform" {
  display_name = "${var.subfolder_name}"
  parent       = "folders/${var.folder_id}"
}
