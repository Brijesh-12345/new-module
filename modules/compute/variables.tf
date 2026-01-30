variable "asg_min" {
  type = number
}

variable "asg_max" {
  type = number
}

variable "asg_desired" {
  type = number
}
variable "ami" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet IDs"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet IDs"
  type        = list(string)
}


variable "sg_id" {
  description = "Security group ID"
  type        = string
}
