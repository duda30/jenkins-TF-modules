variable "bucket-name" {
  default = "my-bucket-mary-maria12312"
}

variable "key-remote-backend" {
  default = "desafio-jenkins/usando-modulos/terraform.tfstate"
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

variable "resource-tags" {
  type = map(string)
  default = {
    Provisionado_terraform = "TeRRaFoRM",
    mary                   = "estag"
  }
  description = "A map of tags for the resource(s)"
}
