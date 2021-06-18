data "google_project" "self" {
}

resource "google_compute_instance" "docker" {
  project      =  "${data.google_project.self.project_id}"
  name         = "dockermachine"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"

  labels = {

    group = "terraform"
    process = "docker"

  }

  tags = ["docker", "vinayak"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size = "150"
      type = "pd-standard"
    }
  }

  network_interface {
    network = "default"
    subnetwork = "default"
    access_config {}
  }


  metadata_startup_script = "#!/bin/bash sudo apt-get update"

  service_account {

    email = "vinayak@vernal-dispatch-281311.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

}
