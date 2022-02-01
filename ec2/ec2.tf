resource "aws_instance" "EC2_TF3" {
    ami = "ami-001089eb624938d9f"
    instance_type = "t2.micro"
    tags = {
        name = "Ec2_started_from_TF"
    }
    key_name = "ec2course"
    user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Hi Friend , I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
                EOF
  
}