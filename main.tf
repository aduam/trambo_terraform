module "vpc_module" {
  source = "./modules/vpc"
  sg_name = var.sg_name
  sg_tags = var.sg_tags
  ingress_rule = var.ingress_rule
  vpc_cidr_bock = var.vpc_cidr_bock
  vpc_instance_tenancy = var.vpc_instance_tenancy
  vpc_tags = var.vpc_tags
  subnet_az = var.subnet_az
}

module "ec2_module" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  tags = var.tags
  subnet_id = module.vpc_module.subnet_id
  aws_security_group_id = module.vpc_module.aws_security_group_id
}