resource "s3_buket" "467.devops.candidate.exam"{
  Region: "ap-south-1"
  Key: "Nadeem.Shaikh"
}

resource "aws_vpc" "vpc" {
  cidr_bock = "10.0.1.0/24"
}
resource "aws_route_table" "test" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = aws_vpc.vpc.cidr_block
  }
}

resource "aws_subnet" "private_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "aws_vpc.vpc.id"
}
resource "aws_iam_role" "lambda" {
  name = "DevOps-Candidate-Lambda-Role"
}

resource "aws_lambda_function" "exam_lambda" {
  function_name = "exam_lambda_function"
  role          = aws_iam_role.lambda
}
