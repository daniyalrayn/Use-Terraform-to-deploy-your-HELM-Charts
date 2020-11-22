provider "helm" {
  kubernetes {
  host                   = data.aws_eks_cluster.default.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.default.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.default.token
  load_config_file       = false
  }
}

data "aws_eks_cluster" "default" {
  name = "Name-of-your-EKS-Cluster"
}

data "aws_eks_cluster_auth" "default" {
  name = "Name-of-your-EKS-Cluster"
}
