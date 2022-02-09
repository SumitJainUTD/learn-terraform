variable "ami" {
  default = "ami-001089eb624938d9f"
}

variable "instance_type" {
  default = {
    default = "t2.nano",
    prod = "t2.large",
    dev = "t2.micro"
  }
}

variable "ec2_name" {
  default = {
    default = "ec2 - default workspace",
    prod = "ec2 - prod workspace",
    dev = "ec2 - dev workspace"
  }
}

variable "availability_zone" {
  default = "us-east-2a"
}