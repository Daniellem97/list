variable "list" {
  description = "Example list variable"
  type        = list(string)
}

locals {
  list_length = length(var.list)
  first_item  = var.list[0]
}

output "list_contents" {
  value = var.list
}

output "list_length" {
  value = local.list_length
}

output "first_item" {
  value = local.first_item
}
