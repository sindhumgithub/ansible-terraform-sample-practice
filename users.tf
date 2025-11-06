# terraform code to create 2 IAM users.
resource "aws_iam_user" "users" {
  count = 2
  name  = "dev-user-${count.index}"
}


# Attach AdministratorAccess policy to each user
resource "aws_iam_user_policy_attachment" "admin_access" {
  count      = 2
  user       = aws_iam_user.users[count.index].name
  policy_arn = data.aws_iam_policy.admin
}