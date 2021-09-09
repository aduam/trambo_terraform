module "ec2_module" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  sg_name = var.sg_name
  instance_type = var.instance_type
  tags = var.tags
  subnet_id = var.subnet_id
  ingress_rule = var.ingress_rule
  vpc_id = var.vpc_id
}