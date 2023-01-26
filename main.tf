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
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}