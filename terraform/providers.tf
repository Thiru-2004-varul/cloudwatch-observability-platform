provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "cloudwatch-observability-platform"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}
