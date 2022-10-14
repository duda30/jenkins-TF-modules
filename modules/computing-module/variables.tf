variable "resource-tags" {
  type = map(string)
  default = {
    Provisionado_terraform = "TeRRaFoRM",
    mary                   = "estag"
  }
  description = "A map of tags for the resource(s)"
}

variable "eip_id" {
  default = "eipalloc-0a791b96d2310c1a2"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0b769f0fdcf9ef629"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "ssh-key-name" {
  default = "mary-key"
}

variable "record-route53-name" {
  default = "www.maria.jenkins.juliocesarpavan.com.br"
}

variable "record-route53-type" {
  default = "A"
}