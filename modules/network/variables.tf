variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "nat_subnet_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    cidr   = string
    az     = string
    tier   = string
    public = bool
  }))
}