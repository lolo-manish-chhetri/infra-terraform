## Infra Terraform

This repository contains Terraform configuration for multiple environments (`dev`, `prod`) using a shared modules pattern and GitHub Actions for CI/CD.

### Layout

- **`.github/workflows`**: Terraform CI/CD pipelines (plan on PR, apply on `main`, optional destroy).
- **`modules/`**: Reusable Terraform modules.
- **`envs/dev`** and **`envs/prod`**: Environment-specific stacks with their own `backend.tf` and `main.tf`.
- **`versions.tf`**: Central Terraform and provider version constraints.


