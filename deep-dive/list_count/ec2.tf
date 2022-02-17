resource "aws_instance" "my_ec2" {
  count = length(var.az)
  ami = var.ami-id
  instance_type = var.instance_type
  availability_zone = element(var.az, count.index)
  tags = {
    Name = "My_EC2_${element(var.az, count.index)}"
  }
}

output "my_ec2" {
  value = aws_instance.my_ec2
}