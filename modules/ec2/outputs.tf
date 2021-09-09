output "instance_ip" {
  value = aws_instance.alan-tf.*.public_ip
}