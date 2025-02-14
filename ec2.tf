resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  tags = {
    Name        = "Test Instance"
    Environment = "Dev"
  }
}
