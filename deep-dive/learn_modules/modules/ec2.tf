resource "aws_instance" "EC2_CREATED_BY_deepdive_modules" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["default"]
    tags = {
        name = var.ec2_name
    }
    availability_zone = var.availability_zone
}




