variable "project_id" { type = string }
variable "region" { type = string  default = "europe-west4" }
variable "network_name" { type = string default = "retail-platform-vpc" }
variable "artifact_repo_name" { type = string default = "retail-platform-images" }
variable "gke_cluster_name" { type = string default = "retail-platform-gke" }
variable "db_instance_name" { type = string default = "retail-platform-postgres" }
variable "redis_instance_name" { type = string default = "retail-platform-redis" }
