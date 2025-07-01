output "sample" {
  value = element(var.sample, 0)
}

variable "sample" {
  default = ["abc", 123]
}

variable "sample1" {
  default = {
    orange = {
      name  = "Orange"
      count = 10
    }
    apple = {
      name  = "Apple"
      count = 100
    }
  }
}

output "sample1" {
  value = lookup(lookup(var.sample1, "apple", null), "count", 0)
}

variable "list" {
  default = ["a", "b", "c"]
}

output "list" {
  value = [for s in var.list : upper(s)]
}

variable "map" {
  default = {
    b = "blue"
    g = "green"
    y = "yellow"
  }
}

output "map" {
  value = [for k, v in var.map : "Color Code - ${k} | Color - ${v}"]
}

variable "map1" {
  default = {
    c1 = {
      color_code = "b"
      color      = "blue"
    }
    c2 = {
      color_code = "y"
      color      = "yellow"
    }
  }
}

output "map1" {
  value = [for k, v in var.map1 : "Color Code - ${v.color_code} | Color - ${v.color}"]
}