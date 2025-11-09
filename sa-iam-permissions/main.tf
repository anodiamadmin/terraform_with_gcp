# ---------- ORG-LEVEL ROLES ----------
resource "google_organization_iam_member" "folder_creator" {
  org_id = var.org_id
  role   = "roles/resourcemanager.folderCreator"
  member = "serviceAccount:${var.service_account_email}"
}

resource "google_organization_iam_member" "project_creator" {
  org_id = var.org_id
  role   = "roles/resourcemanager.projectCreator"
  member = "serviceAccount:${var.service_account_email}"
}

resource "google_organization_iam_member" "project_iam_admin" {
  org_id = var.org_id
  role   = "roles/resourcemanager.projectIamAdmin"
  member = "serviceAccount:${var.service_account_email}"
}

# ---------- BILLING ACCOUNT ROLE ----------
resource "google_billing_account_iam_member" "billing_user" {
  billing_account_id = var.billing_account_id
  role               = "roles/billing.user"
  member             = "serviceAccount:${var.service_account_email}"
}
