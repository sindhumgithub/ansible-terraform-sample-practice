#Feteching the data dynamically for administartion access.
data "aws_iam_policy" "admin" {
  name = "AdministratorAccess"
}