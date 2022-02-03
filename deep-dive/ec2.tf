resource "aws_instance" "EC2_CREATED_BY_deepdive" {
    ami = "ami-001089eb624938d9f"
    instance_type = "t2.nano"
    tags = {
        name = "Ec2_started_from_TF"
    }
}

#resource  "aws_instance" "manually_created_instance" {
#    ami = ""
#    instance_type = ""
#}
# execite the command from terminal
# terraform import aws_instance.manually_created_instance i-0d2f5a11ca2d3d8cd
# copy the ami and instance type from terraform.tfstate and fill

resource  "aws_instance" "manually_created_instance" {
    ami = "ami-0231217be14a6f3ba"
    instance_type = "t2.nano"
    tags = {
        name = "Ec2_started_from_TF"
    }
}