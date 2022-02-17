resource "aws_eip" "my_first_eip" {
    instance = aws_instance.EIP_demo.id
    vpc = true
}

output "my_first_eip_address" {
  value = aws_eip.my_first_eip.public_ip
}