# Variables Configuration
variable "environment" {
  type        = string
  description = "Environment stack"
}

variable "aws_provider_shared_credentials_file" {
  type        = string
  description = "AWS credentials configuration file"
}

variable "aws_provider_profile" {
  type        = string
  description = "AWS profile in credentials configuration"
}

variable "cluster-name" {
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "existing_vpc" {
  type        = string
  description = "Existing vpc id"
  default     = ""
}

variable "vpc-subnet-cidr" {
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  type        = list
  description = "Public Subnet CIDR"
}

variable "database-subnet-cidr" {
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  type        = list
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  type        = string
  description = "Worker Node EC2 instance type"
}

variable "node-instance-disk-size" {
  type        = string
  description = "Node instance disk size"
}

variable "root-block-size" {
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "ec2-key-public-key" {
  type        = string
  description = "AWS EC2 public key data"
}
