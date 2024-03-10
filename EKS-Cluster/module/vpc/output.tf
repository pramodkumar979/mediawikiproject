output "vpcid" {
  value = aws_vpc.Prod_VPC.id
}

output "public_subnets" {
  value = aws_subnet.Public_Subnet.id
}

output "Prod_IGW_ID" {
  value = aws_internet_gateway.prod_gw.id
}