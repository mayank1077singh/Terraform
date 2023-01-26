terraform {
  backend "s3" {
    bucket = "mayank-terraform-statefile"
    key    = "Statefile"
    region = "ap-south-1"
  }
}
resource "aws_s3_bucket" "sample_bucket" {
  bucket = "elasticbeanstalk-us-east-1-105608008969"
}