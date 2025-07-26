variable "aws_region" {
  default = "eu-west-2"
}

variable "project_name" {
  default = "kubegrind"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  default     = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
