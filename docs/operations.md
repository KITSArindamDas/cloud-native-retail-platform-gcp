# Operations Runbook

## Daily Checks

- Review GKE workload health
- Check failed pods and restarts
- Review Cloud SQL CPU, memory, connections, and storage
- Review Redis memory and latency
- Check application error logs
- Review CI/CD pipeline failures

## Deployment Process

1. Merge approved code to main branch.
2. CI builds and validates artifacts.
3. Container image is pushed to Artifact Registry.
4. Kubernetes manifests are applied to GKE.
5. Health checks validate deployment.
6. Monitoring dashboards confirm service status.

## Incident Response

### Application latency

- Check ingress latency
- Check service pod CPU/memory
- Check Cloud SQL query latency
- Check Redis hit ratio
- Roll back recent deployment if required

### Database issue

- Check Cloud SQL metrics
- Review slow queries
- Check connection pool settings
- Validate backup and failover status

### Kubernetes issue

- Check node pool status
- Check pod events
- Check image pull errors
- Check resource requests and limits

## Rollback Strategy

- Use Kubernetes rollout undo for application deployments
- Revert Terraform changes through version control
- Restore database from backup only after impact analysis
