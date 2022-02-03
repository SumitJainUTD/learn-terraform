resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-tf-test-bucket-2022-01-11-23-10-50"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}