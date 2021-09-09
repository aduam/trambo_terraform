output "vpc_id" {
  value = module.vpc_module.vpc_id
}

output "subnet_id" {
  value = module.vpc_module.subnet_id
}

output "aws_security_group_id" {
  value = module.vpc_module.aws_security_group_id
}

output "instance_ip" {
  value = module.ec2_module.instance_ip
}