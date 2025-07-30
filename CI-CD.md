# CI/CD Pipeline for IoT Java App

This project uses GitHub Actions for continuous integration and deployment.

## Environments
- **DEV**: Triggered when code is pushed to `develop`
- **TEST**: Triggered after successful deployment to DEV
- **STAGING**: Triggered when code is pushed to `master` (after PR merge)

## Branch Rules
- `develop` branch is for integration
- `master` is protected — only owners can merge

## GitHub Workflow File
Located at `.github/workflows/ci-cd.yml`

## Deployment Logic
- Builds with Maven
- Placeholder `echo` commands simulate deployment
- Replace with AWS CLI or Terraform to deploy to ECS/Lambda in real projects
