terraform {
  required_version = ">= 0.13"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 0.10.4"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 3.62.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 3.64.0"
    }
    gsuite = {
      source  = "deviavir/gsuite"
      version = "~> 0.1.61"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0.3"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "sigmoid-devops"

    workspaces {
      name = "terraform-devops"
    }
  }

}