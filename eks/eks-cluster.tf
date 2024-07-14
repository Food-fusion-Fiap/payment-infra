resource "aws_eks_cluster" "eks-cluster" {
  name     = var.projectName
  role_arn = var.lab_role_arn

  vpc_config {
    subnet_ids         = [var.subnetA, var.subnetB, var.subnetC]
    security_group_ids = [aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }

  depends_on = [
    aws_security_group.sg
  ]
}