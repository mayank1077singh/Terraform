terraform {
  backend "s3" {
    bucket         = "mayank-terraform-statefile"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "Statefile"
    region         = "ap-south-1"
    encrypt        = true
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
