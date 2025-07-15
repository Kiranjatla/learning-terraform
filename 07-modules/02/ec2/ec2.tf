resource "aws_instance" "sample" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]
}

variable "SG_ID" {}