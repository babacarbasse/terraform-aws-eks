#
# Provider Configuration

provider "aws" {
  region                  = var.aws-region
  shared_credentials_file = var.aws_provider_shared_credentials_file
  profile                 = var.aws_provider_profile
}

provider "http" {}
