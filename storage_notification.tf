resource "google_storage_notification" "tfer--bucket_without_update_permission-002F-6" {
  bucket         = "bucket_without_update_permission"
  payload_format = "JSON_API_V1"
  topic          = "//pubsub.googleapis.com/projects/ox-sigmoid-prod/topics/prebid_acl_test"
}

resource "google_storage_notification" "tfer--dummy_acl_prebid-002F-4" {
  bucket         = "dummy_acl_prebid"
  payload_format = "JSON_API_V1"
  topic          = "//pubsub.googleapis.com/projects/vernal-dispatch-281311/topics/prebid_another_project"
}

resource "google_storage_notification" "tfer--dummy_acl_prebid-002F-5" {
  bucket         = "dummy_acl_prebid"
  payload_format = "JSON_API_V1"
  topic          = "//pubsub.googleapis.com/projects/ox-sigmoid-prod/topics/prebid_another_project"
}

resource "google_storage_notification" "tfer--dummy_acl_prebid-002F-7" {
  bucket         = "dummy_acl_prebid"
  payload_format = "JSON_API_V1"
  topic          = "//pubsub.googleapis.com/projects/ox-sigmoid-prod/topics/prebid_terraform_another_project"
}

resource "google_storage_notification" "tfer--dummy_acl_prebid-002F-8" {
  bucket         = "dummy_acl_prebid"
  payload_format = "JSON_API_V1"
  topic          = "//pubsub.googleapis.com/projects/ox-sigmoid-prod/topics/prebid_terraform_another_project"
}
