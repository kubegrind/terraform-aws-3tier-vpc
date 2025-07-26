provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

module "network" {
  source           = "./modules/network"
  project_name     = "${var.project_name}-vpc-${var.environment}"
  environment      = var.environment
  vpc_cidr         = var.vpc_cidr
  nat_subnet_name  = "${var.project_name}-web-subnet-${var.environment}-1"

  subnets = {
    "${var.project_name}-web-subnet-${var.environment}-1" = {
      cidr   = "10.0.1.0/24"
      az     = data.aws_availability_zones.available.names[0]
      tier   = "web"
      public = true
    },
    "${var.project_name}-web-subnet-${var.environment}-2" = {
      cidr   = "10.0.2.0/24"
      az     = data.aws_availability_zones.available.names[1]
      tier   = "web"
      public = true
    },
    "${var.project_name}-app-subnet-${var.environment}-1" = {
      cidr   = "10.0.3.0/24"
      az     = data.aws_availability_zones.available.names[0]
      tier   = "app"
      public = false
    },
    "${var.project_name}-app-subnet-${var.environment}-2" = {
      cidr   = "10.0.4.0/24"
      az     = data.aws_availability_zones.available.names[1]
      tier   = "app"
      public = false
    },
    "${var.project_name}-db-subnet-${var.environment}-1" = {
      cidr   = "10.0.5.0/24"
      az     = data.aws_availability_zones.available.names[0]
      tier   = "db"
      public = false
    },
    "${var.project_name}-db-subnet-${var.environment}-2" = {
      cidr   = "10.0.6.0/24"
      az     = data.aws_availability_zones.available.names[1]
      tier   = "db"
      public = false
    }
  }
}