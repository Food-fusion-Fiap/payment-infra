# Criação de um grupo de sub-redes para o banco de dados
resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = [var.subnetA, var.subnetB, var.subnetC]

  tags = {
    Name = "Main DB Subnet Group"
  }
}

# Definição da política de segurança para a sub-rede pública
resource "aws_security_group" "rds_public_sg" {
  name        = "rds_public_sg"
  description = "Allow postgres inbound traffic"
  vpc_id      = var.vpc

  # Permitir tráfego de entrada apenas nas portas necessárias
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Criação do grupo de segurança para o endpoint do SSM
resource "aws_security_group" "ssm_endpoint_sg" {
  name   = "ssm_endpoint_sg"
  vpc_id = var.vpc

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permite tráfego de entrada de qualquer lugar
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Permite todo o tráfego de saída para qualquer lugar
  }
}

# Criação do VPC endpoint para o AWS Systems Manager (SSM)
resource "aws_vpc_endpoint" "ssm_endpoint" {
  vpc_id              = var.vpc
  service_name        = "com.amazonaws.us-east-1.ssm"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  security_group_ids = [aws_security_group.ssm_endpoint_sg.id]
  subnet_ids         = [var.subnetA, var.subnetB, var.subnetC]

  tags = {
    Name = "SSM Endpoint"
  }
}