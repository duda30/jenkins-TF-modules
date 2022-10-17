variable "vpc_id" {
  type    = string
  default = "vpc-0b769f0fdcf9ef629"
}

variable "resource-tags" {
  type = map(string)
  default = {
    Provisionado_terraform = "TeRRaFoRM",
    mary                   = "estag"
  }
  description = "A map of tags for the resource(s)"
}

variable "aws_subnet_cidr_block" {
  type = list(string)
  default = [
    "192.168.5.0/24",
    "192.168.6.0/24"
  ]
}
