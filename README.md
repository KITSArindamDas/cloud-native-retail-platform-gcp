# Cloud-Native Retail Platform Modernization on Google Cloud

## Project Summary

This portfolio project demonstrates a production-style retail store modernization platform built on Google Cloud Platform using Terraform, Kubernetes, DevOps automation, and cloud-native architecture patterns.

The project is inspired by real enterprise retail modernization work involving POS, Self-Checkout, store services, hybrid connectivity, and omnichannel retail workloads. All company-specific details, IP addresses, internal names, and sensitive implementation details have been removed or generalized.

## Business Problem

Large retailers often run legacy in-store POS platforms that are difficult to scale, slow to release, and expensive to operate. Store systems must stay highly available even when network connectivity is unstable, while also integrating with cloud services for promotions, pricing, inventory, transactions, security, and monitoring.

The goal of this project is to design and provision a cloud-ready retail platform that supports:

- Containerized POS and store microservices
- Hybrid connectivity between stores, data center, and GCP
- Highly available Kubernetes workloads
- Managed PostgreSQL database services
- Distributed caching using Redis
- Secure API ingress and service-to-service communication
- CI/CD-driven release automation
- Centralized logging, monitoring, and alerting
- Infrastructure as Code using Terraform

## Architecture Overview

The platform uses Google Cloud as the main cloud foundation.

High-level components:

- Google Cloud VPC with private subnets
- Private GKE cluster for application workloads
- Cloud SQL for PostgreSQL database services
- Memorystore for Redis caching
- Artifact Registry for container images
- Cloud Load Balancing for controlled ingress
- Cloud Armor for edge protection
- Secret Manager for application secrets
- Cloud Logging and Cloud Monitoring for observability
- IAM service accounts with least-privilege access
- Terraform modules for repeatable provisioning

## Target Workloads

Example microservices deployed to GKE:

- POS core service
- Pricing service
- Promotions service
- Receipt service
- Tender/payment orchestration service
- Inventory service
- Store synchronization service
- Admin/back-office service

## Key Engineering Outcomes

This architecture is designed to support:

- Faster deployment through CI/CD automation
- Improved store platform reliability
- Standardized cloud infrastructure provisioning
- Reduced manual deployment effort
- Better observability across store and cloud workloads
- Safer modernization from monolith to microservices

## Repository Structure

```text
.
├── README.md
├── docs/
│   ├── project-case-study.md
│   ├── architecture-decisions.md
│   ├── security.md
│   ├── operations.md
│   └── recruiter-summary.md
├── diagrams/
│   ├── architecture.mmd
│   └── deployment-flow.mmd
├── terraform/
│   ├── envs/dev/
│   └── modules/
├── k8s/
│   ├── base/
│   └── overlays/dev/
├── .github/workflows/
└── scripts/
```

## Technologies Used

- Google Cloud Platform
- Terraform
- Kubernetes / GKE
- Docker
- Cloud SQL PostgreSQL
- Memorystore Redis
- Artifact Registry
- Cloud Load Balancing
- Cloud Armor
- Cloud Monitoring
- Cloud Logging
- GitHub Actions
- Helm/Kustomize-ready Kubernetes manifests

## How to Use This Portfolio

This repository can be used to show recruiters and hiring managers that you understand:

- Cloud infrastructure design
- Terraform modularization
- Kubernetes workload deployment
- GCP managed services
- Platform engineering practices
- Enterprise modernization patterns
- Secure and observable production systems

## Important Note

This is a sanitized portfolio version. It does not contain any proprietary company code, confidential architecture, customer information, IP addresses, credentials, or internal endpoints.
