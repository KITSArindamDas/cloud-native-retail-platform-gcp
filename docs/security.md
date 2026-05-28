# Security Design

## Security Goals

- Protect application workloads
- Protect data services
- Avoid public exposure of internal systems
- Enforce least privilege
- Keep secrets out of source code

## Controls

### Identity and Access

- Dedicated service accounts per workload
- Least-privilege IAM roles
- Separation between infrastructure deployer and runtime identities

### Network Security

- Private GKE cluster
- Private Cloud SQL access
- Restricted firewall rules
- Cloud NAT for controlled outbound access
- Cloud Armor for public ingress protection

### Secret Management

- Application secrets stored in Secret Manager
- No credentials committed to GitHub
- Kubernetes secrets generated from secure sources

### Data Protection

- Encryption at rest using Google-managed or customer-managed keys
- TLS for service communication where applicable
- Private IP access for managed services

### Operational Security

- Audit logging enabled
- Centralized logs
- Monitoring alerts for suspicious failure patterns
