# ShopLite Infrastructure & GitOps

Infrastructure as Code (Terraform) and Kubernetes GitOps manifests for deploying **ShopLite** on Azure Kubernetes Service (AKS) with **ArgoCD**, **Argo Rollouts (Blue-Green)**, and **Prometheus/Grafana** monitoring.

## Repository Structure

```text
shoplite-gitops-infra/
├── terraform/                  # Azure Cloud Infrastructure (IaC)
│   ├── providers.tf            # Azurerm provider + Azure Storage remote state
│   ├── variables.tf            # Input variable definitions
│   ├── main.tf                 # RG, ACR, AKS (+ AcrPull RBAC), PostgreSQL Flexible Server
│   └── outputs.tf              # ACR server, AKS name, PostgreSQL FQDN
└── k8s/
    ├── argocd/
    │   └── application.yaml    # ArgoCD Application manifest (watches k8s/apps)
    └── apps/
        ├── rollout.yaml        # Argo Rollouts Blue-Green deployment spec
        ├── services.yaml       # Active (Blue) & Preview (Green) Kubernetes Services
        └── servicemonitor.yaml # Prometheus Operator scrape config