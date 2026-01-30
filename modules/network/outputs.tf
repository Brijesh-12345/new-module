################################
# Public Subnets
################################
output "public_subnets" {
  description = "Public subnet IDs"
  value = [
    aws_subnet.public_1a.id,
    aws_subnet.public_1b.id
  ]
}

################################
# Private App Subnets
################################
output "private_subnets" {
  description = "Private app subnet IDs"
  value = [
    aws_subnet.private_app_1a.id,
    aws_subnet.private_app_1b.id
  ]
}

################################
# DB Subnets
################################
output "db_subnets" {
  description = "Database subnet IDs"
  value = [
    aws_subnet.db_1a.id,
    aws_subnet.db_1b.id
  ]
}

################################
# Security Group
################################
output "app_sg_id" {
  description = "Application security group ID"
  value       = aws_security_group.app_sg.id
}

################################
# VPC ID (optional but useful)
################################
output "vpc_id" {
  description = "VPC ID"
  value       = var.vpc_id
}

output "private_rt_id" {
  description = "Private route table ID"
  value       = aws_route_table.private_rt.id
}
