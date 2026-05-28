resource "google_redis_instance" "cache" {
  name           = var.instance_name
  tier           = "STANDARD_HA"
  memory_size_gb = 1
  region         = var.region
  authorized_network = var.network_id
  redis_version  = "REDIS_7_0"
}
