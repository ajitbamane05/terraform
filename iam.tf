# resource "aws_iam_user" "lb" {
#     for_each = var.users
#   name = each.key
#   path = "/system/"
# }

# variable "users" {
#   type = set(string)
#   default = ["Ajit", "Ajinkya"]
# }

# variable "users" {
#   type = map(string)
#   default = {
#     "name" = "Ajit"
#     "name2"= "Ajinkya"
#   }
# }

# resource "aws_iam_user" "lb" {
#   for_each = toset(["Ajit", "Ajinkya"])
#   name = each.key
#   path = "/system/"
# }