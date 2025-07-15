resource "aws_instance" "sample" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = upper(var.tagName)
  }
}

variable "tagName" {}