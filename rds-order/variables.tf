variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project"
  default     = "order-service-db"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "db_password" {
  description = "Password for the database"
  default     = "rootroot"
}

variable "db_name" {
  description = "The name of the database"
  default     = "postgresorder"
}

variable "db_username" {
  description = "The username for the database"
  default     = "postgresorder"
}

variable "github_token" {
  description = "The GitHub token for authentication"
  default     = "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"
}

/*Current AWS Academy config: from Palmira's AWS Academy Account*/

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