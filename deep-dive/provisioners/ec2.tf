resource "aws_instance" "EC2_CREATED_BY_deepdive_provisioner" {
    ami = "ami-001089eb624938d9f"
    instance_type = "t2.micro"
    key_name = "ec2course"
    tags = {
        name = "Ec2_started_from_TF"
    }

  provisioner "local-exec" {
    command = "echo ${aws_instance.EC2_CREATED_BY_deepdive_provisioner.private_ip} >> privateip.txt"
  }
}

resource "aws_eip" "myeip" {
  instance = "${aws_instance.EC2_CREATED_BY_deepdive_provisioner.id}"
}

output "my_eip" {
  value = "${aws_eip.myeip.public_ip}"
}


resource "null_resource" "ec2-ssh-connection" {
    connection {
          host        = "${aws_eip.myeip.public_ip}"
          type        = "ssh"
          port        = 22
          user        = "ec2-user"
          private_key = "${file("/Users/sumitjain/Work/terraform/udemy-course/ec2course.cer")}"
          timeout     = "1m"
          agent       = false
        }
    provisioner "file" {
        # cp index.html ec2-user@eip:/var/index.html
        source      = "index.html"
        destination = "/home/ec2-user/index.html"
      }
    provisioner "remote-exec" {
          inline = [
          "sudo yum update -y",
          "sudo yum install -y httpd",
          "sudo systemctl start httpd.service",
          "sudo systemctl enable httpd.service",
          "sudo cp /home/ec2-user/index.html /var/www/html/index.html",
       ]
      }
}




