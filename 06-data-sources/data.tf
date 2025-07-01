data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["037402781494"]
}

output "ami" {
  value = data.aws_ami.example
}