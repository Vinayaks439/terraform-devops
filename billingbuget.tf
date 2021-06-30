data "google_billing_account" "account" {
    billing_account = "012191-023296-B237DE"
}

data "google_project" "project" {

}

resource "google_pubsub_topic" "budgettopic" {
    name = "budget-topic"

    labels = {
        budget = "test"
    }
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
    depends_on = [google_pubsub_topic.budgettopic]
}