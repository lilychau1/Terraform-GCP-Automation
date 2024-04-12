terraform {
  required_version = ">= 1.0"
  backend "local" {}
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

locals {
  envs = { for tuple in regexall("(.*)=(.*)", file(".env")) : tuple[0] => sensitive(tuple[1]) }
}

provider "google" {
  credentials = file(var.credentials)
  project     = local.envs["PROJECT_ID"]
  region      = var.region
}

resource "google_compute_instance" "uk_power_analytics_vm" {
  name         = var.vm_instance
  machine_type = var.machine_type
  zone         = var.region

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "${file("./start_up_script.sh")}"

}

resource "google_storage_bucket" "terraform-test-bucket" {
  name          = "${local.envs["PROJECT_ID"]}-${var.gcs_bucket_class}"
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1 // days
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }

}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}
