# Architecture Decisions

## ADR-001: Use GKE for container orchestration

Decision: Use Google Kubernetes Engine for application workloads.

Reason:
- Supports microservices deployment
- Provides autoscaling and rolling updates
- Integrates well with GCP IAM, logging, monitoring, and networking

## ADR-002: Use Cloud SQL PostgreSQL for relational data

Decision: Use Cloud SQL for managed PostgreSQL.

Reason:
- Reduces database administration overhead
- Provides managed backup and high availability options
- Supports private IP connectivity

## ADR-003: Use Memorystore Redis for caching

Decision: Use Memorystore for Redis.

Reason:
- Improves read performance for frequently accessed retail data
- Reduces repeated database lookups
- Provides managed Redis operations

## ADR-004: Use Terraform modules

Decision: Split infrastructure into reusable Terraform modules.

Reason:
- Improves maintainability
- Supports environment reuse
- Makes infrastructure easier to review and test

## ADR-005: Use private networking

Decision: Keep database and core workloads on private network paths.

Reason:
- Reduces public exposure
- Improves security posture
- Supports enterprise hybrid connectivity patterns
