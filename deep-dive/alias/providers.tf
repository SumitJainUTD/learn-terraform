provider "aws" {
  region = "us-east-2"
  access_key = "XXXXX"
  secret_key = "YYYY"
}


provider "aws" {
  alias = "us-east-one-region"
  region = "us-east-1"
  access_key = "XXXX"
  secret_key = "YYYY"
}