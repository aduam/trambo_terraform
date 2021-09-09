variable "ami_id" {
  type = string
  default = "ami-03d5c68bab01f3496"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = object({
    Name = string
    Environment = string
  })
  default = {
  Name="alan-tf",
  Environment="dev"
}
}

variable "sg_name" {
  type = string
  default = "alan-sg-tf"
}

variable "ingress_rule" {
  type = list(object({
    from_port = string
    to_port = string
    protocol = string
    cidr_blocks = list(string)
  }))
  default = [
  {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
}

variable "subnet_id" {
  type = string
  # replace this default variable after run module vpc in other repo
  default = "subnet-0af88706928420ddb"
}

variable "vpc_id" {
  type = string
  # replace this default variable after run module vpc in other repo
  default = "vpc-050fec4020400206b"
}