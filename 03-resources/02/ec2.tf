provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  root_block_device {
    volume_size = 15
  }
}

output "ec2_public_ip" {
  value = aws_instance.sample.public_ip
}