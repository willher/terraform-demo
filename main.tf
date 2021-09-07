# https://registry.terraform.io/providers/hashicorp/google/latest/docs
# https://registry.terraform.io/providers/hashicorp/aws/latest
# https://registry.terraform.io/providers/hashicorp/azurerm/latest
terraform {

  required_providers {
  # Source is requiered. Version is optional but suggested for prod deployments
  # Version defaults to latest version if not specified 
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }

  # USE BCKEND REMOTE IF YOU WANT TO PUSH STATE FILE TO CLOUD PROVIDER
  #   backend "remote" {
  #     hostname     = "app.terraform.io"
  #     organization = "<INSERT ORG>"
  #     workspaces {
  #       name = "state-migration"
  #     }
  #  }
}

provider "google" {
# Each vendor has it's own format for how to pass in provider credentials
# Credentials file can be generated once you create a service account in GCP
  credentials = file("credentials.json")
  project     = "<PROJECT_ID>"
  region      = var.gcp_region
  zone        = "us-central1-c"
}
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = true
  routing_mode            = REGIONAL

}