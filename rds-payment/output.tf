output "rds_public_sg__payment_id" {
  description = "RDS public security group ID for payment service"
  value       = aws_security_group.rds_public_sg_payment.id
}

output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.payment_postgres.endpoint
}