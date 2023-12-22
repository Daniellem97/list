variable "example_list" {
  description = "Example list variable"
  type        = list(string)
  default     = ["item1", "item2", "item3"]
}

locals {
  list_length = length(var.example_list)
  first_item  = var.example_list[0]
}

output "list_contents" {
  value = var.example_list
}

output "list_length" {
  value = local.list_length
}

output "first_item" {
  value = local.first_item
}
