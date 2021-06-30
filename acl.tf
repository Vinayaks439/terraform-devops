data "google_project" "project" {

}

resource "google_project_iam_custom_role" "billing_custom_role_admin" {

  role_id     = "billing_admin_for_budget"
  title       = "Billing Admin for creating budgets"
  description = "Billing Admin for creating budgets Roles and permissions given to vinayak Service Account"
  permissions = ["billing.accounts.list", "billing.accounts.get", "billing.accounts.update", "billing.budgets.*"]
}

resource "google_project_iam_member" "billingadmin" {

  project = data.google_project.self.project_id
  role = "projects/${data.google_project.project.project_id}/roles/billing_admin_for_budget"
  member = "serviceAccount:vinayak@vernal-dispatch-281311.iam.gserviceaccount.com"

}

resource "google_project_iam_member" "pubsubadmin" {
    project = data.google_project.project.project_id
    role = "roles/pubsub.admin"
    member = "serviceAccount:vinayak@vernal-dispatch-281311.iam.gserviceaccount.com"
}