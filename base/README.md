Base eks terraform module
===========

A terraform module to provide a kubernetes cluster in AWS.

This should be used as a generic template to be included in every terraform module.

Module Input Variables
----------------------

- `environment` - variable environment
- `department` - variable department for resource's tags
- `aws_provider_shared_credentials_file` - Path to your aws credentials
- `aws_provider_profile` - Profile to use in your aws credentials file

- `region` - Variable region to use for resource deployment
- `availability-zones` - Availability zones to use
- `cluster-name` - Kubernetes cluster name
- `k8s-version` - Eks version to install
- `node-instance-type` - Instance type for cluster nodes
- `node-instance-disk-size ` - Cluster nodes disk size
- `desired-capacity` - Cluster number of nodes desired
- `max-size` - Cluster max size nodes for scaling
- `min-size` - Cluster min size nodes for scaling
- `vpc-subnet-cidr` - Vpc subnet cidr
- `private-subnet-cidr` - Private subnet cidr
- `public-subnet-cidr` - Public subnet cidr
- `db-subnet-cidr` - DB subnet cidr
- `eks-cw-logging` - Enable EKS CWL for EKS components
- `ec2-key-public-key` - AWS EC2 public key data
- `root-block-size` - Size of the root EBS block device
Usage
-----

```hcl
module "demo" {
  source = "base"

  environment = "whatever variable you would like to pass"
  ...
}
```


Outputs
=======

 - `config-map-aws-auth` 
 - `kubeconfig` 
