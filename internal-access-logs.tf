module "internal_access_logs" {
  source    = "git::https://github.com/cloudposse/terraform-aws-cloudtrail-s3-bucket.git"
  namespace = var.organization_name
  name      = "user-access-logs"
  region    = "us-east-1"
  tags      = local.tags
}

/**
 * Outputs
 */

output "internal_access_logs_bucket" {
  value       = module.internal_access_logs.bucket_id
  description = "Internal access logs bucket name"
}
