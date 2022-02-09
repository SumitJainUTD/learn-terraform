resource "aws_instance" "EC2_CREATED_BY_deepdive_workspace_example" {
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace)
    key_name = "ec2course"
    tags = {
        Name = lookup(var.ec2_name, terraform.workspace)
    }
    availability_zone = var.availability_zone
}


