
module "vpc" {
  source = "../../modules/vpc"

  cidr_block = "10.0.0.0/16"
}

################
# Network
################
module "network" {
  source = "../../modules/network"

  vpc_id = module.vpc.vpc_id
}

################
# Compute
################
module "compute" {
  source = "../../modules/compute"

  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name

  public_subnets  = module.network.public_subnets
  private_subnets = module.network.private_subnets
  sg_id           = module.network.app_sg_id

  asg_min         = var.asg_min
  asg_max         = var.asg_max
  asg_desired     = var.asg_desired
}

module "db" {
  source = "../../modules/db"

  subnet_ids = module.network.db_subnets
  username   = var.db_username
  password   = var.db_password
}
