resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name_u}/${var.Environment}/vpc-id"
  type  = "String"
  value = module.Roboshop-vpc.vpc_id
}

resource "aws_ssm_parameter" "public-subnet" {
  name  = "/${var.project_name_u}/${var.Environment}/Public-Subnet-id"
  type  = "StringList"
  value = join(",",module.Roboshop-vpc.public_subnet_id)
}


resource "aws_ssm_parameter" "private-subnet" {
  name  = "/${var.project_name_u}/${var.Environment}/Private-Subnet-id"
  type  = "StringList"
  value = join(",",module.Roboshop-vpc.private_subnet_id)
}

resource "aws_ssm_parameter" "database-subnet" {
  name  = "/${var.project_name_u}/${var.Environment}/Database-Subnet-id"
  type  = "StringList"
  value = join(",",module.Roboshop-vpc.database_subnet_id)
}