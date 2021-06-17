resource "google_storage_bucket_acl" "tfer--bucket_without_update_permission" {
  bucket = "bucket_without_update_permission"
}

resource "google_storage_bucket_acl" "tfer--dummy_acl_prebid" {
  bucket = "dummy_acl_prebid"
}

resource "google_storage_bucket_acl" "tfer--standingsenpai123" {
  bucket = "standingsenpai123"
}
