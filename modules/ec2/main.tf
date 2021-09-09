resource "aws_instance" "alan-tf" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = var.tags
  vpc_security_group_ids = [aws_security_group.alan-sg-tf.id]
  subnet_id = var.subnet_id
}

resource "aws_security_group" "alan-sg-tf" {
  name = var.sg_name
  vpc_id = var.vpc_id

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