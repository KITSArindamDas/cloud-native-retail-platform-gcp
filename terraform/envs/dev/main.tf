terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source      = "../../modules/network"
  project_id  = var.project_id
  region      = var.region
  network_name = var.network_name
}

module "artifact_registry" {
  source     = "../../modules/artifact-registry"
  project_id = var.project_id
  region     = var.region
  repo_name  = var.artifact_repo_name
}

module "gke" {
  source        = "../../modules/gke"
  project_id    = var.project_id
  region        = var.region
  network       = module.network.network_name
  subnetwork    = module.network.private_subnet_name
  cluster_name  = var.gke_cluster_name
}

module "cloudsql" {
  source        = "../../modules/cloudsql"
  project_id    = var.project_id
  region        = var.region
  network_id    = module.network.network_id
  instance_name = var.db_instance_name
}

module "memorystore" {
  source        = "../../modules/memorystore"
  project_id    = var.project_id
  region        = var.region
  network_id    = module.network.network_id
  instance_name = var.redis_instance_name
}

module "monitoring" {
  source     = "../../modules/monitoring"
  project_id = var.project_id
}
