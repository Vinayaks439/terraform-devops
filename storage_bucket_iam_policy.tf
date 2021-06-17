resource "google_storage_bucket_iam_policy" "tfer--bucket_without_update_permission" {
  bucket = "b/bucket_without_update_permission"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311",
        "serviceAccount:terraform@ox-sigmoid-prod.iam.gserviceaccount.com"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyBucketReader"
    },
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyObjectOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311",
        "serviceAccount:terraform@ox-sigmoid-prod.iam.gserviceaccount.com"
      ],
      "role": "roles/storage.legacyObjectReader"
    }
  ]
}
POLICY
}

resource "google_storage_bucket_iam_policy" "tfer--dummy_acl_prebid" {
  bucket = "b/dummy_acl_prebid"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311",
        "serviceAccount:terraform@ox-sigmoid-prod.iam.gserviceaccount.com",
        "user:sai.prathyusha@sigmoidanalytics.com"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyBucketReader"
    },
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyObjectOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311",
        "serviceAccount:terraform@ox-sigmoid-prod.iam.gserviceaccount.com"
      ],
      "role": "roles/storage.legacyObjectReader"
    }
  ]
}
POLICY
}

resource "google_storage_bucket_iam_policy" "tfer--standingsenpai123" {
  bucket = "b/standingsenpai123"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyBucketReader"
    },
    {
      "members": [
        "projectEditor:vernal-dispatch-281311",
        "projectOwner:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyObjectOwner"
    },
    {
      "members": [
        "projectViewer:vernal-dispatch-281311"
      ],
      "role": "roles/storage.legacyObjectReader"
    }
  ]
}
POLICY
}
