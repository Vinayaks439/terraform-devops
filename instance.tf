resource "google_service_account" "computebucketadmin" {
  project      = "vernal-dispatch-281311"
  account_id   = "computebucketadmin"
  display_name = "SA for compute and GCS buckets full access and GKE in"
}


resource "google_compute_instance" "docker" {
  project      = "vernal-dispatch-281311"
  name         = "dockermachine"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"

  labels = {

    group   = "terraform"
    process = "docker"

  }

  tags = ["docker", "vinayak"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size  = "150"
      type  = "pd-standard"
    }
  }

  network_interface {
    network    = "default"
    subnetwork = "default"
    access_config {}
  }


  metadata_startup_script = "#!/bin/bash sudo apt-get update"

  service_account {

    email  = google_service_account.computebucketadmin.email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

}
