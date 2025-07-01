variable "sample" {
  default = "hello"
}

# Variable is not a combination then var.sample, if it is combining with any other string then ${var.sample}
output "sample" {
  value = var.sample
}

output "sample1" {
  value = "Hey, ${var.sample}"
}

# String Data type
variable "sample1" {
  default = "Hello World"
}

# Number data type
variable "sample2" {
  default = 100
}

# Boolean Data type
variable "sample3" {
  default = true
}

# List variable
variable "sample4" {
  default = [
    "hello",
    100,
    true
  ]
}

# Map variable
variable "sample5" {
  default = {
    string  = "hello"
    number  = 100
    boolean = true
  }
}

## Access a list value
output "sample4" {
  value = var.sample4[0]
}

## Access a Map value
output "sample5" {
  value = var.sample5["number"]
}

## Pick a variable from terraform.tfvars file
variable "sample6" {}
output "sample6" {
  value = var.sample6
}

## Pick a variable from CLI
variable "sample7" {}
output "sample7" {
  value = var.sample7
}

## Pick a variable from SHELL ENV VARIABLE
#  export TF_VAR_sample8=1234
variable "sample8" {}
output "sample8" {
  value = var.sample8
}


variable "sample9" {}