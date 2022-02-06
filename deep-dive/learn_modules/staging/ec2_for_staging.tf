module "my-ec2" {
  source = "../modules"
  instance_type = "t2.micro"
  ec2_name = "my_staging_ec2"
}