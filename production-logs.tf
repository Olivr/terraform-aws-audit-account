module "production_logs" {
  source    = "git::https://github.com/cloudposse/terraform-aws-cloudtrail-s3-bucket.git"
  namespace = var.organization_name
  stage     = "production"
  name      = "logs"
  region    = "us-east-1"
  tags      = merge(local.tags, { Environment = "production" })
}

/**
 * Outputs
 */

output "production_logs_bucket" {
  value       = module.production_logs.bucket_id
  description = "Production logs bucket name"
}
