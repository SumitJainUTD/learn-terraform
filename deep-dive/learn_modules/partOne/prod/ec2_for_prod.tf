module "my-ec2" {
  source = "../modules"
  instance_type = "t2.large"
  ec2_name = "my_prod_ec2"
}