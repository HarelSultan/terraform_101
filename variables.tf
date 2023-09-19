variable "s3_bucket" {
  description = "Name of the s3 backend"
  type = string
  sensitive = true
  default = "harel-tf-state"
}

variable "s3_key" {
  description = "Path to store the tf state file in s3 backend"
  type = string
  sensitive = true
  default = "terraform/terraform_101/dev_workspace/terraform.tfstate"
}

variable "region" {
  description = "AWS Region"
  type = string
  sensitive = true
  default = "us-east-1"
}

variable "dynamodb_table" {
  description = "DynamoDB table name"
  type = string
  sensitive = true
  default = "harel-terraform-state-locking"
}

variable "is_backend_encrypted" {
  description = "Boolean to set backend encryption on/off"
  type = bool
  sensitive = true
  default = true
}

variable "common_tags" {
  description = "Common tags to attach when provisioning resources"
  type = map(string)
  default = {
    Owner = "harels"
    bootcamp = "19"
    expiration_date = "30-12-23"
    managed_by = "Terraform"
  }
}

variable "key_pair_name" {
  description = "Provisioned instances key pair name"
  type = string
  sensitive = true
  default = "AWS-Harel"
}

variable "my_ip" {
  description = "Allowed ip to perform ssh connection to the instances"
  type = string
  sensitive = true
  default = "46.121.182.216"
}
