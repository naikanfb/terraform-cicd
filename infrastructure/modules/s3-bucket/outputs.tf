output "bucket_name" {
  description = "Nombre del bucket creado"
  value       = aws_s3_bucket.bucket.bucket
}

output "bucket_arn" {
  description = "ARN del bucket"
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_id" {
  description = "ID del bucket"
  value       = aws_s3_bucket.bucket.id
}
