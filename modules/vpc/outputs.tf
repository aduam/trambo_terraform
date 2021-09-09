output "vpc_id" {
  value = aws_vpc.vpc_alan.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet_alan.id
}

output "aws_security_group_id" {
  value = aws_security_group.alan-sg-tf.id
}