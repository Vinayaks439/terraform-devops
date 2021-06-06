data "google_project" "self" {
}

data "google_compute_zones" "available" {
}

data "google_client_config" "current" {
}

data "terraform_remote_state" "sigmoid-devops" {
  backend = "remote"

  config = {
    organization = "sigmoid-devops"
    workspaces = {
      name = "terraform-devops"
    }
  }
}
