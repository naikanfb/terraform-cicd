terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://localhost:4566"
    ec2 = "http://localhost:4566"
  }
}

# Usar el módulo para crear bucket de desarrollo
module "bucket_desarrollo" {
  source = "./modules/s3-bucket"

  bucket_name = "modulo-dev-bucket"
  environment = "Development"

  tags = {
    Project = "Terraform Learning"
    Owner   = "ASIR Student"
  }
}

# Usar el módulo para crear bucket de producción
module "bucket_produccion" {
  source = "./modules/s3-bucket"

  bucket_name = "modulo-prod-bucket"
  environment = "Production"

  tags = {
    Project  = "Terraform Learning"
    Owner    = "ASIR Student"
    Critical = "true"
  }
}

# Outputs para ver los resultados
output "bucket_dev_name" {
  value = module.bucket_desarrollo.bucket_name
}

output "bucket_prod_name" {
  value = module.bucket_produccion.bucket_name
}
