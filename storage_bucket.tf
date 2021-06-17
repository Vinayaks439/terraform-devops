resource "google_storage_bucket" "tfer--bucket_without_update_permission" {
  bucket_policy_only          = "true"
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US-CENTRAL1"
  name                        = "bucket_without_update_permission"
  project                     = "vernal-dispatch-281311"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "true"
}

resource "google_storage_bucket" "tfer--dummy_acl_prebid" {
  bucket_policy_only          = "true"
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US-CENTRAL1"
  name                        = "dummy_acl_prebid"
  project                     = "vernal-dispatch-281311"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "true"
}

resource "google_storage_bucket" "tfer--standingsenpai123" {
  bucket_policy_only          = "true"
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US"
  name                        = "standingsenpai123"
  project                     = "vernal-dispatch-281311"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "true"
}
