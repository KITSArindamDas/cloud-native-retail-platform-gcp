# Manual Setup Notes

Before running Terraform, create or select a GCP project and enable required APIs:

- Compute Engine API
- Kubernetes Engine API
- Cloud SQL Admin API
- Memorystore API
- Artifact Registry API
- Cloud Monitoring API
- Cloud Logging API
- Secret Manager API

Example commands:

```bash
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable redis.googleapis.com
gcloud services enable artifactregistry.googleapis.com
gcloud services enable monitoring.googleapis.com
gcloud services enable logging.googleapis.com
gcloud services enable secretmanager.googleapis.com
```
