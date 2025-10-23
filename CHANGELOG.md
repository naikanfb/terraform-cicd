# Changelog

Registro de cambios del proyecto Terraform CI/CD.

Formato basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/),
versionado según [Semantic Versioning](https://semver.org/lang/es/).

## [1.1.0] - 2025-10-15

### Added
- Bucket S3 adicional para logs (`terraform-cicd-logs`)
- Outputs de Terraform para facilitar integración:
  - `main_bucket_name`: Nombre del bucket principal
  - `logs_bucket_name`: Nombre del bucket de logs
- Tag `Purpose` en recursos para mejor categorización

### Changed
- Mejorada documentación de tags en recursos
- Actualizado README con nueva estructura

### Fixed
- N/A

## [1.0.0] - 2025-10-15

### Added
- Configuración inicial de Terraform con provider AWS (LocalStack)
- Bucket S3 principal (`terraform-cicd-bucket`)
- Workflow de GitHub Actions para validación (`validate.yml`):
  - Terraform format check
  - Terraform init
  - Terraform validate
- Workflow de GitHub Actions para deploy (`deploy.yml`):
  - LocalStack como servicio
  - Terraform init/plan/apply automático
  - Verificación de recursos creados
- Badge de estado en README.md
- Documentación inicial del proyecto

### Changed
- N/A

### Deprecated
- N/A

### Removed
- N/A

### Fixed
- N/A

### Security
- Uso de credenciales ficticias para LocalStack
- Endpoint local para desarrollo seguro

---

## Formato de Versionado

- **MAJOR** (X.0.0): Cambios incompatibles con versiones anteriores
- **MINOR** (x.Y.0): Nueva funcionalidad compatible
- **PATCH** (x.y.Z): Correcciones de bugs

## Tipos de Cambios

- **Added**: Nuevas funcionalidades
- **Changed**: Cambios en funcionalidades existentes
- **Deprecated**: Funcionalidades obsoletas
- **Removed**: Funcionalidades eliminadas
- **Fixed**: Correcciones de bugs
- **Security**: Cambios de seguridad
