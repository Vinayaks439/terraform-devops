resource "google_compute_instance_group" "IAPcrontab" {
  name        = "IAPcrontab"
  description = "IAP instance group for crontab UI"

  instances = [
    google_compute_instance.jenkins-server.id,
  ]

  named_port {
    name = "http"
    port = "3000"
  }

  zone = "us-central1-c"
}



