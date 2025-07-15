resource "aws_instance" "sample" {
  count         = length(var.instances)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  tags = {
    Name = element(var.instances, count.index)
  }
}


output "public_ip" {
  value = aws_instance.sample.*.public_ip
}

variable "instances" {
  default = ["cart", "catalogue"]
}