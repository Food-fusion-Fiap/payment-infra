resource "aws_db_instance" "order_postgres" {
  allocated_storage    = 20
  storage_type         = "gp3"
  engine               = "postgres"
  engine_version       = "16.2"
  instance_class       = var.db_instance_class
  identifier           = var.db_name
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.postgres16"
  publicly_accessible  = true

  db_subnet_group_name   = aws_db_subnet_group.main_order.name
  vpc_security_group_ids = [aws_security_group.rds_public_sg_order.id] # Just for demonstration purposes
  skip_final_snapshot    = true

  tags = {
    Name = "RDS PostgreSQL Order"
  }
}