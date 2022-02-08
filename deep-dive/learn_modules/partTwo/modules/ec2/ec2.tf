resource "aws_instance" "my_ec2_deepdive_modules" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    tags = {
        Name = var.ec2_name
    }
    availability_zone = var.availability_zone
}




