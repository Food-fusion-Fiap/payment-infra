provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-state-group-18" //TODO: create your S3 manually in aws
    key    = "prod/terraform-postgres-payment-service.tfstate" //TODO: mudar para nomes especificos de cada microservico
    region = "us-east-1"
  }
}

provider "github" {
  token = var.github_token
  owner = "Food-fusion-Fiap" # Nome da organização
}

resource "github_actions_organization_secret" "db_host_secret" {
  secret_name             = "POSTGRES_HOST_PAYMENT"
  plaintext_value         = aws_db_instance.payment_postgres.endpoint
  visibility              = "all"
}
