### VPC

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.7.0"

  name = "vpc.${var.cluster-name}"

  cidr = var.vpc-subnet-cidr

  azs              = var.availability-zones
  private_subnets  = var.private-subnet-cidr
  public_subnets   = var.public-subnet-cidr
  // database_subnets = var.database-subnet-cidr

  create_database_subnet_group = true
  enable_dns_hostnames = true
  enable_dns_support = true
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false
  create_database_subnet_route_table     = true
  create_database_internet_gateway_route = true

  tags = {
    Name                                        = "vpc.${var.cluster-name}"
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
    department          = var.department
    environment         = var.environment
  }

  public_subnet_tags = {
    Name                                        = "sub.${var.cluster-name}.public"
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
    "kubernetes.io/role/elb"                    = 1
    department          = var.department
    environment         = var.environment
  }
  private_subnet_tags = {
    Name                                        = "sub.${var.cluster-name}.private"
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
    "kubernetes.io/role/internal-elb"           = 1
    department          = var.department
    environment         = var.environment
  }
//  database_subnet_tags = {
//    Name = "${var.cluster-name}-eks-db"
//  }
}
