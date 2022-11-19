terraform {
  required_version = ">= 1.2.7"
}

provider "google" {
  project = var.project_id
  region  = var.project_region
  zone    = var.project_zone
}

provider "kubernetes" {
}

resource "kubernetes_namespace_v1" "example" {
  metadata {
    annotations = {
      name = "example-annotation"
    }

    labels = {
      mylabel = "label-value"
    }

    name = "terraform-example-namespace"
  }
}