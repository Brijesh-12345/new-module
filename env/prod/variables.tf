

variable "ami" {
  description = "AMI ID to use for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for compute module"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "db_username" {
  description = "Master username for the RDS database"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS database"
  type        = string
  sensitive   = true
}

variable "asg_min" {
  description = "Minimum number of instances in Auto Scaling Group"
  type        = number
  default     = 2
}

variable "asg_max" {
  description = "Maximum number of instances in Auto Scaling Group"
  type        = number
  default     = 4
}

variable "asg_desired" {
  description = "Desired number of instances in Auto Scaling Group"
  type        = number
  default     = 2
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "webapp"
}
