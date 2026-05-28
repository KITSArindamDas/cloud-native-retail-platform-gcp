resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = var.repo_name
  description   = "Container images for retail platform services"
  format        = "DOCKER"
}
