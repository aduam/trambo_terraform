variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "tags" {
  type = object({
    Name = string
    Environment = string
  })
}

variable "subnet_id" {
  type = string
}

variable "aws_security_group_id" {
  type = string
}