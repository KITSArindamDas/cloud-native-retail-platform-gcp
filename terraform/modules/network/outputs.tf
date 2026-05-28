output "network_name" { value = google_compute_network.vpc.name }
output "network_id" { value = google_compute_network.vpc.id }
output "private_subnet_name" { value = google_compute_subnetwork.private.name }
