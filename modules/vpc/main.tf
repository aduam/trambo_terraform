resource "aws_vpc" "vpc_alan" {
  cidr_block = var.vpc_cidr_bock
  instance_tenancy = var.vpc_instance_tenancy
  tags = var.vpc_tags
}

resource "aws_subnet" "public_subnet_alan" {
  availability_zone = "us-west-2a"
  tags = var.sg_tags
  vpc_id = aws_vpc.vpc_alan.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_security_group" "alan-sg-tf" {
  name = var.sg_name
  vpc_id = aws_vpc.vpc_alan.id

  dynamic "ingress" {
    for_each = var.ingress_rule
    content {
      from_port = ingress.value.from_port
      to_port = ingress.value.to_port
      protocol = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}