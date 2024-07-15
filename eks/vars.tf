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
  default     = "vpc-0fa670a93cef5c2de"
}

variable "subnetA" {
  description = "Subnet A"
  default     = "subnet-0b404abac1af95985"
}

variable "subnetB" {
  description = "Subnet B"
  default     = "subnet-0b2752081365c6e41"
}

variable "subnetC" {
  description = "Subnet C"
  default     = "subnet-0eeeb12770f48c913"
}