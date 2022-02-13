resource "aws_eip" "my_eip_in_us_east_2" {
  vpc = true
}

resource "aws_eip" "my_eip_in_us_east_1" {
  provider = "aws.us-east-one-region"
  vpc = true
}