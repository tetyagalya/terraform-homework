
resource "aws_iam_user" "ab" {
  name = "jenny"
}

resource "aws_iam_user" "ab2" {
  name = "rose"
}

resource "aws_iam_user" "ab3" {
  name = "lisa"
}

resource "aws_iam_user" "ab4" {
  name = "jisoo"
}

resource "aws_iam_user" "cd" {
  name = "jihyo"
}

resource "aws_iam_user" "cd2" {
  name = "sana"
}

resource "aws_iam_user" "cd3" {
  name = "momo"
}

resource "aws_iam_user" "cd4" {
  name = "dahyun"
}

resource "aws_iam_group" "group1" {
  name = "blackpink"
}

resource "aws_iam_group" "group2" {
  name = "twice"
}

resource "aws_iam_group_membership" "group1" {
  name  = "tf-testing-group-membership"
  users = [
    aws_iam_user.ab.name,
    aws_iam_user.ab2.name,
    aws_iam_user.ab3.name,
    aws_iam_user.ab4.name,
    aws_iam_user.ef.name
  ]
  group = aws_iam_group.group1.name  
}

resource "aws_iam_group_membership" "group2" { 
  name = "tf-testing-group-membership2"

  users = [
    aws_iam_user.cd.name,
    aws_iam_user.cd2.name,
    aws_iam_user.cd3.name,
    aws_iam_user.cd4.name,
    aws_iam_user.ef2.name
  ]

  group = aws_iam_group.group2.name
}

resource "aws_iam_user" "ef" {
 name = "miyeon"
}


resource "aws_iam_user" "ef2" {
 name = "mina"
}
