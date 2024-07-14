variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project"
  default     = "food_fusion"
}


variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "db_password" {
  description = "Password for the database"
  default     = ""
}

variable "db_name" {
  description = "The name of the database"
  default     = ""
}

variable "db_username" {
  description = "The username for the database"
  default     = ""
}

variable "github_token" {
  description = "The GitHub token for authentication"
  default     = ""
}

/*Current AWS Academy config: from Palmira's AWS Academy Account*/

/*Variables hardcoded from AWS Academy pre created networks*/
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
