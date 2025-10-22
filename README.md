# Terraform CI/CD con LocalStack

[![Terraform Validate](https://github.com/naikanfb/terraform-cicd/actions/workflows/validate.yml/badge.svg)](https://github.com/naikanfb/terraform-cicd/actions/workflows/validate.yml)

## Descripción

Proyecto de Terraform con integración continua usando GitHub Actions y LocalStack.

## Estructura
```
terraform-cicd/
├── .github/
│   └── workflows/
│       ├── validate.yml
│       └── deploy.yml
├── infrastructure/
│   └── main.tf
├── REBASE.md
└── CHANGELOG.md
```

## Workflows

### Validación
- Se ejecuta en cada push y PR
- Verifica formato, inicialización y validación de Terraform

### Deploy
- Despliega infraestructura en LocalStack automáticamente
- Ejecuta init, plan y apply

## Estado de CI/CD

- ✅ Validación automática
- ✅ Deploy automático
- ✅ Versionado con tags y releases

## Uso Local
```bash
cd infrastructure
terraform init
terraform plan
terraform apply
```
