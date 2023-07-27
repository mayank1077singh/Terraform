
resource "aws_instance" "web" {
  ami           = "ami-0f2e14a2494a72db9"
  instance_type = "t3.micro"

  tags = {
    Name = "Hello"
  }
}
