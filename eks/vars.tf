variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "payment-service"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

/*Bucket needs to be pre-created at AWS account*/
variable "s3_bucket_name" {
  default = "terraform-state-group-18" 
}

/*Current AWS Academy config: from Palmira's AWS Academy Account*/

/*Variables hardcoded, got from AWS Academy pre-created roles*/
/*It only changes the number, that is your own AWSAccountId*/
variable "principal_arn" {
  default = "arn:aws:iam::431657365754:role/voclabs"
}

variable "lab_role_arn" {
  default = "arn:aws:iam::431657365754:role/LabRole"
}

/*Variables hardcoded, got from AWS Academy pre-created networks*/
variable "vpc" {
  description = "VPC"
  default     = "vpc-087b8de4d3c8c1017"
}

variable "subnetA" {
  description = "Subnet A"
  default     = "subnet-0dce24d3e4a3acb3c"
}

variable "subnetB" {
  description = "Subnet B"
  default     = "subnet-03dc3c40655f5e92d"
}

variable "subnetC" {
  description = "Subnet C"
  default     = "subnet-05f4a1c9e16b0a1c5"
}