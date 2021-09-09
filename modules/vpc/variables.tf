variable "sg_tags" {
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

variable "vpc_cidr_bock" {
  type = string
}

variable "vpc_instance_tenancy" {
  type = string
}

variable "vpc_tags" {
  type = object({
    Name = string
    Environment = string
  })
}

variable "subnet_az" {
  type = string
}