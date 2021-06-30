data "google_billing_account" "account" {
    billing_account = "012191-023296-B237DE"
}

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

resource "google_pubsub_topic" "budgettopic" {
    name = "budget-topic"

    labels = {
        budget = "test"
    }
    depends_on = [google_project_iam_member.pubsubadmin]
}

data "google_pubsub_topic" "mytopic" {
    name = "budget-topic"
}

resource "google_billing_budget" "mybudget" {

    billing_account = data.google_billing_account.account.id
    display_name = "Test Billing Budget"

    budget_filter {
        projects = ["projects/${data.google_project.project.number}"]
    }

    amount {
        specified_amount {
            currency_code = "INR"
            units = "40"
        }
    }

    threshold_rules {
        threshold_percent = 1.0
    }

    all_updates_rule {

        pubsub_topic = "projects/${data.google_project.project.id}/topics/${data.google_pubsub_topic.mytopic.id}"
    }
    depends_on = [google_pubsub_topic.budgettopic , google_project_iam_member.billingadmin]
}