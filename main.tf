provider "aws" {
  region = var.region
}

module "vpc" {
  source        = "./modules/vpc"
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  project_name  = var.project_name
}

module "ec2" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  subnet_id      = module.vpc.subnet_id
  project_name   = var.project_name
  vpc_id         = module.vpc.vpc_id 
}