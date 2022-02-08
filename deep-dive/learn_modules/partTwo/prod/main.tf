module "my_vpc" {
  source = "../modules/vpc"
#  vpc_id = module.my-vpc.vpc_id
  cidr_vpc = "172.0.0.0/16"
  cidr_instance_tenancy = "default"
  vpc_id = module.my_vpc.vpc_id
  cidr_subnet = "172.0.1.0/24"
}


module "my_ec2" {
  source = "../modules/ec2"
  ec2_name = "my_prod_ec2"
  instance_type = "t2.large"
  subnet_id = module.my_vpc.subnet_id
}