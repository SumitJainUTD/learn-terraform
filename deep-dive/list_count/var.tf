variable "ami-id" {
  default = "ami-001089eb624938d9f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "az" {
  type = list(string)
  default = [
    "us-east-2a",
    "us-east-2b",
    "us-east-2c"
  ]
}