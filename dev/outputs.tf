output "kubeconfig" {
  value = module.eks.kubeconfig
}

output "aws_auth" {
  value = module.eks.config-map-aws-auth
}
