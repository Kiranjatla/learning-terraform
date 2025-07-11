data "aws_ami" "example" {
  most_recent = true
  owners      = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice*"]
  }
}

output "ami" {
  value = data.aws_ami.example.id
}
