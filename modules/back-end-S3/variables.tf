variable "bucket-name" {
  default = "my-bucket-mary-maria12312"
}

variable "key-remote-backend" {
  default = "desafio-jenkins/primeira-tentativa/terraform.tfstate"
}

variable "bucket-region" {
  default = "us-east-2"
}

variable "bucket-acl" {
  default = "private"
}

variable "bucket-versioning" {
  default = "Enabled"
}