output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  value = { for k, s in aws_subnet.subnets : k => s.id }
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}