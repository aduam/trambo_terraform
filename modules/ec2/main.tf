resource "aws_instance" "alan-tf" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = var.tags
  vpc_security_group_ids = [var.aws_security_group_id]
  subnet_id = var.subnet_id
}
