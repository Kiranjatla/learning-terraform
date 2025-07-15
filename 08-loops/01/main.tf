resource "aws_instance" "sample" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  tags = {
    Name = "test-${count.index}"
  }
}


output "public_ip" {
  value = aws_instance.sample.*.public_ip
}