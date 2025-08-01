output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_ids" {
  value = module.network.subnet_ids
}

output "nat_gateway_id" {
  value = module.network.nat_gateway_id
}