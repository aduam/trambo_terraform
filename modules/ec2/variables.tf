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

variable "sg_name" {
  type = string
}

variable "ingress_rule" {
  type = list(object({
    from_port = string
    to_port = string
    protocol = string
    cidr_blocks = list(string)
  }))
}

variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}