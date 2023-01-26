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

resource "aws_instance" "web" {
  ami           = "ami-0f2e14a2494a72db9"
  instance_type = "t3.micro"

  tags = {
    Name = "Hello"
  }
}