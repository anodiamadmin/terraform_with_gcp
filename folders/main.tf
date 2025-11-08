resource "google_folder" "tfrm_test_folder" {
  display_name = "tfrm_test"
  parent       = "organizations/75464482940"
}

resource "google_folder" "tfrm_sub_folder" {
  display_name = "subfolder_test"
  parent       = "folders/367288012271"
}
