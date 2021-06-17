resource "google_storage_bucket_iam_binding" "tfer--bucket_without_update_permission" {
  bucket = "b/bucket_without_update_permission"
}

resource "google_storage_bucket_iam_binding" "tfer--dummy_acl_prebid" {
  bucket = "b/dummy_acl_prebid"
}

resource "google_storage_bucket_iam_binding" "tfer--standingsenpai123" {
  bucket = "b/standingsenpai123"
}
