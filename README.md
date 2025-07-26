# terraform-aws-3tier-vpc

This Terraform module provisions a **secure, scalable 3-tier VPC network** in AWS using best practices. It supports a **modular infrastructure-as-code** setup for environments like `dev`, `staging`, or `prod`.

---

## Architecture Overview

The module creates:

- ✅ A custom VPC
- ✅ 2 public subnets (Web Layer)
- ✅ 2 private subnets (App Layer)
- ✅ 2 private subnets (DB Layer)
- ✅ An Internet Gateway (IGW)
- ✅ A single NAT Gateway (in a public subnet)
- ✅ Proper routing via public/private route tables
- ✅ Subnet tags (`web`, `app`, `db`) for grouping and autoscaling


## Features

- 🧱 **3-tier design**: Separate web, app, and db layers
- 🌍 **Highly available**: Subnets span across AZs
- 🔒 **Secure by design**: Public and private routing separated
- 🔁 **Reusable**: Parameterized for environment-based deployment (`dev`, `prod`, etc.)

---


## Getting Started

### 1. Prerequisites

- Terraform >= 1.2.0
- AWS credentials configured (`~/.aws/credentials` or environment variables)

### 2. Clone the Repo

```bash
git clone https://github.com/kubegrind/terraform-aws-3tier-vpc.git
cd terraform-aws-3tier-vpc
