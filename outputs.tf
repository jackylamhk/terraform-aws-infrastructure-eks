## -----------
## MODULE: EKS
## -----------

output "kubecfg" {
  value = module.eks.kubeconfig
}
output "kubernetes-cluster-certificate-authority-data" {
  value = module.eks.cluster_certificate_authority_data
}

output "kubernetes-cluster-id" {
  value = module.eks.cluster_id
}

output "kubernetes-cluster-endpoint" {
  value = module.eks.cluster_endpoint
}

## -----------
## MODULE: VPC
## -----------
output "vpc_id" {
  value = module.eks-vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.eks-vpc.private_subnets
}

output "private_subnets_cidr_blocks" {
  value = {
    ipv4 = module.eks-vpc.private_subnets_cidr_blocks
    ipv6 = module.eks-vpc.private_subnets_ipv6_cidr_blocks
  }
}

output "private_route_table_ids" {
  value = module.eks-vpc.private_route_table_ids
}

output "public_subnet_ids" {
  value = module.eks-vpc.public_subnets
}

output "public_subnets_cidr_blocks" {
  value = {
    ipv4 = module.eks-vpc.public_subnets_cidr_blocks
    ipv6 = module.eks-vpc.public_subnets_ipv6_cidr_blocks
  }
}