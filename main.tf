variable "example_list" {
  description = "Example list variable"
  type        = list(string)
}

locals {
  list_length = length(TF_VAR.list)
  first_item  = TF_VAR.list[0]
}

output "list_contents" {
  value = TF_VAR.list
}

output "list_length" {
  value = local.list_length
}

output "first_item" {
  value = local.first_item
}
