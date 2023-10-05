module "Roboshop-vpc" {
    source = "git::https://github.com/ShaikSuhail27/Terraform-vpc-advanced-module.git"
    cidr_block = var.cidr_block_u
    common_tags = var.common_tags_u
    project_name = var.project_name_u
    public_subnet_cidr = var.public_subnet_cidr_u
    private_subnet_cidr = var.private_subnet_cidr_u
    database_subnet_cidr = var.database_subnet_cidr_u
    is_peering_required = true
    default_vpc_id = data.aws_vpc.default.id
    default_cidr_block = data.aws_vpc.default.cidr_block
    default_route_table_id = data.aws_vpc.default.main_route_table_id
}
