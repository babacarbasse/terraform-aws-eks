terraform {
  backend "s3" {
    bucket = "terraform-bucket-state"
    key    = "eks/dev/terraform.tfstate"
    region = "us-west-2"
    shared_credentials_file = "~/.aws/credentials"
    profile = "default"
  }
}

module "eks" {
  source = "../base"

  environment                          = var.environment
  aws_provider_shared_credentials_file = var.aws_provider_shared_credentials_file
  aws_provider_profile                 = var.aws_provider_profile

  aws-region                           = var.aws-region
  availability-zones                   = var.availability-zones
  cluster-name                         = var.cluster-name
  k8s-version                          = var.k8s-version
  node-instance-type                   = var.node-instance-type
  node-instance-disk-size              = var.node-instance-disk-size
  desired-capacity                     = var.desired-capacity
  max-size                             = var.max-size
  min-size                             = var.min-size
  vpc-subnet-cidr                      = var.vpc-subnet-cidr
  private-subnet-cidr                  = var.private-subnet-cidr
  public-subnet-cidr                   = var.public-subnet-cidr
  database-subnet-cidr                 = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  db-subnet-cidr                       = var.db-subnet-cidr
  eks-cw-logging                       = var.eks-cw-logging
  ec2-key-public-key                   = var.ec2-key-public-key
  root-block-size                      = var.root-block-size
}
