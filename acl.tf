data "google_project" "project" {

}

resource "google_project_iam_member" "billingadmin" {

  project = data.google_project.self.project_id
  role = "roles/billing.admin"
  member = "vinayak@vernal-dispatch-281311.iam.gserviceaccount.com"

}

resource "google_project_iam_member" "pubsubadmin" {
    project = data.google_project.project.project_id
    role = "roles/pubsub.admin"
    member = "vinayak@vernal-dispatch-281311.iam.gserviceaccount.com"
}