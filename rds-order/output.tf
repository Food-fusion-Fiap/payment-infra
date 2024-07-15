output "rds_public_sg_order_id" {
  description = "RDS public security group ID"
  value       = aws_security_group.rds_public_sg_order.id
}

output "db_instance_order_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.order_postgres.endpoint
}