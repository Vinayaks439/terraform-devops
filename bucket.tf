resource "google_project_iam_custom_role" "grid_dr_reprocessing_role" {

  role_id     = "grid_dr_reprocessing_custom_role"
  title       = "grid dr reprocessing Custom Role"
  description = "Roles and permissions given to GRID-DR Reprocessing Service Account"
  permissions = ["storage.buckets.get", "storage.buckets.list", "storage.objects.get", "storage.objects.list", "storage.objects.create", "storage.objects.delete", "storage.objects.update"]
}

resource "google_service_account" "computebucketadmin" {
  project      = "vernal-dispatch-281311"
  account_id   = "computebucketadmin"
  display_name = "SA for compute and GCS buckets full access and GKE in "
}

resource "google_storage_bucket" "senpai" {
  project       = "vernal-dispatch-281311"
  name          = "fallensenpai"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "fallen" {
  project       = "vernal-dispatch-281311"
  name          = "standingsenpai"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "bucketadmin" {

  for_each = toset(["fallensenpai",
  "standingsenpai"])

  bucket = each.key
  role   = "projects/vernal-dispatch-281311/roles/grid_dr_reprocessing_custom_role"
  member = "serviceAccount:${google_service_account.computebucketadmin.email}"
}
